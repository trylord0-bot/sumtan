import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freerasp/freerasp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../app/l10n/locale_controller.dart';
import '../../../core/database/database_helper.dart';
import '../data/purchase_secure_storage.dart';
import '../data/purchase_service.dart';
import '../data/purchase_transaction_dao.dart';

enum IapStatus { idle, loading, success, error, notAvailable }

class PurchaseState {
  /// 결제 완료 후 인메모리에만 유지되는 플래그.
  /// 내보내기 성공 또는 앱 종료 시 자동으로 초기화된다.
  final bool isUnlocked;

  /// 반려동물 추가 결제 완료 후 인메모리에만 유지되는 1회 등록권.
  /// 실제 반려동물 추가가 완료되면 바로 소비된다.
  final bool hasAdditionalPetCredit;
  final IapStatus status;
  final ProductDetails? product;
  final ProductDetails? additionalPetProduct;
  final String? errorMessage;

  const PurchaseState({
    this.isUnlocked = false,
    this.hasAdditionalPetCredit = false,
    this.status = IapStatus.loading,
    this.product,
    this.additionalPetProduct,
    this.errorMessage,
  });

  PurchaseState copyWith({
    bool? isUnlocked,
    bool? hasAdditionalPetCredit,
    IapStatus? status,
    ProductDetails? product,
    ProductDetails? additionalPetProduct,
    String? errorMessage,
  }) =>
      PurchaseState(
        isUnlocked: isUnlocked ?? this.isUnlocked,
        hasAdditionalPetCredit:
            hasAdditionalPetCredit ?? this.hasAdditionalPetCredit,
        status: status ?? this.status,
        product: product ?? this.product,
        additionalPetProduct: additionalPetProduct ?? this.additionalPetProduct,
        errorMessage: errorMessage,
      );
}

class PurchaseNotifier extends StateNotifier<PurchaseState> {
  PurchaseNotifier(this._service, this._secureStorage, this._l10n)
      : super(const PurchaseState()) {
    _init();
  }

  final PurchaseService _service;
  final PurchaseSecureStorage _secureStorage;
  final AppLocalizations Function() _l10n;
  StreamSubscription<List<PurchaseDetails>>? _sub;
  Completer<bool>? _additionalPetCompleter;
  PurchaseTransactionDao? _dao;

  // 미사용 트랜잭션 ID (markConsumed 시 사용)
  String? _exportTxId;
  String? _additionalPetTxId;

  Future<void> _init() async {
    if (kDebugMode) {
      state = state.copyWith(isUnlocked: true, status: IapStatus.idle);
      return;
    }

    // freeRASP 보안 탐지 설정 (루팅/탈옥 포함)
    try {
      final config = TalsecConfig(
        androidConfig: AndroidConfig(
          packageName: 'kr.co.lunlu.sumtan',
          // TODO: 릴리즈 키스토어 SHA-256 해시로 교체
          // 추출 명령: keytool -printcert -jarfile app-release.apk
          signingCertHashes: ['replace_with_release_cert_hash'],
        ),
        iosConfig: IOSConfig(
          bundleIds: ['kr.co.lunlu.sumtan'],
          teamId: '7WPX8J5QH9',
        ),
        watcherMail: 'lunlu.co.kr@gmail.com',
        isProd: true,
      );
      final callback = ThreatCallback(
        onPrivilegedAccess: _onRasp,
      );
      Talsec.instance.attachListener(callback);
      await Talsec.instance.start(config);
    } catch (_) {
      // 탐지 초기화 실패 시 무시하고 진행
    }

    final available = await _service.isAvailable();
    if (!mounted) return;
    if (!available) {
      state = state.copyWith(status: IapStatus.notAvailable);
      return;
    }

    // DAO 초기화 및 미사용 트랜잭션 복원
    try {
      final db = await DatabaseHelper.instance.database;
      if (!mounted) return;
      _dao = PurchaseTransactionDao(db, _secureStorage);
      final pending = await _dao!.loadPending();
      if (!mounted) return;
      for (final tx in pending) {
        if (tx.productId == PurchaseService.exportProductId) {
          _exportTxId = tx.id;
          state = state.copyWith(isUnlocked: true);
        } else if (tx.productId == PurchaseService.additionalPetProductId) {
          _additionalPetTxId = tx.id;
          state = state.copyWith(hasAdditionalPetCredit: true);
        }
      }
    } catch (_) {}

    _sub = _service.purchaseStream.listen(_handlePurchaseUpdate);

    final product = await _service.loadExportProduct();
    final additionalPetProduct = await _service.loadAdditionalPetProduct();
    if (!mounted) return;
    state = state.copyWith(
      status: IapStatus.idle,
      product: product,
      additionalPetProduct: additionalPetProduct,
    );
  }

  void _handlePurchaseUpdate(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      if (purchase.productID != PurchaseService.exportProductId &&
          purchase.productID != PurchaseService.additionalPetProductId) {
        continue;
      }

      if (purchase.status == PurchaseStatus.purchased) {
        if (!mounted) return;

        final txId = purchase.purchaseID ??
            '${purchase.productID}_${DateTime.now().millisecondsSinceEpoch}';
        final tx = PurchaseTransaction(
          id: txId,
          productId: purchase.productID,
          purchasedAt: DateTime.now().toIso8601String(),
        );
        try {
          await _dao?.insert(tx);
        } catch (_) {}

        if (purchase.productID == PurchaseService.exportProductId) {
          _exportTxId = txId;
          state = state.copyWith(isUnlocked: true, status: IapStatus.success);
        } else {
          _additionalPetTxId = txId;
          state = state.copyWith(
            hasAdditionalPetCredit: true,
            status: IapStatus.success,
          );
          _completeAdditionalPetPurchase(true);
        }
      } else if (purchase.status == PurchaseStatus.error) {
        if (!mounted) return;
        state = state.copyWith(
          status: IapStatus.error,
          errorMessage:
              purchase.error?.message ?? _l10n().settingsPurchaseFailed,
        );
        if (purchase.productID == PurchaseService.additionalPetProductId) {
          _completeAdditionalPetPurchase(false);
        }
      } else if (purchase.status == PurchaseStatus.canceled) {
        if (!mounted) return;
        state = state.copyWith(status: IapStatus.idle);
        if (purchase.productID == PurchaseService.additionalPetProductId) {
          _completeAdditionalPetPurchase(false);
        }
      }

      if (purchase.pendingCompletePurchase) {
        await _service.completePurchase(purchase);
      }
    }
  }

  void _onRasp() {
    if (!mounted) return;
    state = state.copyWith(status: IapStatus.notAvailable);
  }

  void _completeAdditionalPetPurchase(bool success) {
    final completer = _additionalPetCompleter;
    if (completer == null || completer.isCompleted) return;
    completer.complete(success);
    _additionalPetCompleter = null;
  }

  Future<void> buyExportUnlock() async {
    final product = state.product;
    if (product == null) {
      state = state.copyWith(
        status: IapStatus.error,
        errorMessage: _l10n().settingsPurchaseProductLoadFailed,
      );
      return;
    }
    state = state.copyWith(status: IapStatus.loading);
    try {
      await _service.buy(product);
    } catch (e) {
      if (!mounted) return;
      state = state.copyWith(
        status: IapStatus.error,
        errorMessage: _l10n().settingsPurchaseStartFailed,
      );
    }
  }

  Future<bool> buyAdditionalPetCredit() async {
    if (state.hasAdditionalPetCredit) return true;

    if (kDebugMode) {
      state = state.copyWith(
        hasAdditionalPetCredit: true,
        status: IapStatus.success,
      );
      return true;
    }

    final product = state.additionalPetProduct;
    if (product == null) {
      state = state.copyWith(
        status: IapStatus.error,
        errorMessage: _l10n().settingsPurchaseProductLoadFailed,
      );
      return false;
    }

    final completer = Completer<bool>();
    _additionalPetCompleter = completer;
    state = state.copyWith(status: IapStatus.loading);
    try {
      await _service.buy(product);
      return completer.future;
    } catch (e) {
      if (!mounted) return false;
      _completeAdditionalPetPurchase(false);
      state = state.copyWith(
        status: IapStatus.error,
        errorMessage: _l10n().settingsPurchaseStartFailed,
      );
      return false;
    }
  }

  /// 내보내기 완료 후 호출 — 트랜잭션을 consumed 처리하고 플래그 초기화
  Future<void> resetUnlock() async {
    if (_exportTxId != null) {
      try {
        await _dao?.markConsumed(_exportTxId!);
      } catch (_) {}
      _exportTxId = null;
    }
    state = state.copyWith(isUnlocked: false, status: IapStatus.idle);
  }

  Future<void> consumeAdditionalPetCredit() async {
    if (_additionalPetTxId != null) {
      try {
        await _dao?.markConsumed(_additionalPetTxId!);
      } catch (_) {}
      _additionalPetTxId = null;
    }
    state =
        state.copyWith(hasAdditionalPetCredit: false, status: IapStatus.idle);
  }

  void reset() {
    state = state.copyWith(status: IapStatus.idle);
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}

final purchaseProvider = StateNotifierProvider<PurchaseNotifier, PurchaseState>(
  (ref) => PurchaseNotifier(
    PurchaseService(),
    PurchaseSecureStorage(),
    () => _purchaseLocalizations(ref),
  ),
);

AppLocalizations _purchaseLocalizations(Ref ref) {
  final configuredLocale = ref.read(localeControllerProvider).valueOrNull;
  final locale = _supportedLocale(
    configuredLocale ?? PlatformDispatcher.instance.locale,
  );
  return lookupAppLocalizations(locale);
}

Locale _supportedLocale(Locale locale) {
  final supportedLocales = AppLocalizations.supportedLocales;

  for (final supported in supportedLocales) {
    if (supported.languageCode == locale.languageCode &&
        supported.countryCode == locale.countryCode) {
      return supported;
    }
  }

  for (final supported in supportedLocales) {
    if (supported.languageCode == locale.languageCode) {
      return supported;
    }
  }

  return const Locale('en');
}
