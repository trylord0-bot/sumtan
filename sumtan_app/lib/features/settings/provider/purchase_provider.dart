import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../data/purchase_service.dart';

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
  PurchaseNotifier(this._service) : super(const PurchaseState()) {
    _init();
  }

  final PurchaseService _service;
  StreamSubscription<List<PurchaseDetails>>? _sub;
  Completer<bool>? _additionalPetCompleter;

  Future<void> _init() async {
    if (kDebugMode) {
      state = state.copyWith(isUnlocked: true, status: IapStatus.idle);
      return;
    }

    final available = await _service.isAvailable();
    if (!mounted) return;
    if (!available) {
      state = state.copyWith(status: IapStatus.notAvailable);
      return;
    }

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
        if (purchase.productID == PurchaseService.exportProductId) {
          // 인메모리 플래그만 세팅 — DB/SharedPreferences 저장 없음
          state = state.copyWith(isUnlocked: true, status: IapStatus.success);
        } else {
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
          errorMessage: purchase.error?.message ?? '결제에 실패했어요',
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
        errorMessage: '상품 정보를 불러오지 못했어요. 잠시 후 다시 시도해 주세요.',
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
        errorMessage: '결제를 시작하지 못했어요. 잠시 후 다시 시도해 주세요.',
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
        errorMessage: '상품 정보를 불러오지 못했어요. 잠시 후 다시 시도해 주세요.',
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
        errorMessage: '결제를 시작하지 못했어요. 잠시 후 다시 시도해 주세요.',
      );
      return false;
    }
  }

  /// 내보내기 완료 후 호출 — 플래그를 메모리에서 초기화
  void resetUnlock() {
    state = state.copyWith(isUnlocked: false, status: IapStatus.idle);
  }

  void consumeAdditionalPetCredit() {
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
  (ref) => PurchaseNotifier(PurchaseService()),
);
