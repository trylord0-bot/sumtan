import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../pet/provider/pet_provider.dart';
import '../../../settings/provider/purchase_provider.dart';

Future<void> openPaidAddPetScreen(BuildContext context, WidgetRef ref) async {
  final allowed = await ensureAdditionalPetPayment(context, ref);
  if (!context.mounted || !allowed) return;
  context.push('/profile/add');
}

Future<bool> ensureAdditionalPetPayment(
  BuildContext context,
  WidgetRef ref,
) async {
  if (kDebugMode) return true;

  final petCount = ref.read(petsProvider).valueOrNull?.length ?? 0;
  if (petCount == 0) return true;

  final purchaseState = ref.read(purchaseProvider);
  if (purchaseState.hasAdditionalPetCredit) return true;

  final confirmed = await _showAdditionalPetPaymentDialog(
    context,
    ref,
    petCount: petCount,
  );
  if (confirmed != true) return false;
  if (!context.mounted) return false;

  final current = ref.read(purchaseProvider);
  if (current.status == IapStatus.notAvailable) {
    showTopToast(context, context.l10n.storeUnavailableMsg);
    return false;
  }
  if (current.status == IapStatus.loading &&
      current.additionalPetProduct == null) {
    showTopToast(context, context.l10n.checkingPaymentMsg);
    return false;
  }

  final paid =
      await ref.read(purchaseProvider.notifier).buyAdditionalPetCredit();
  if (!context.mounted) return false;
  if (!paid) {
    final message =
        ref.read(purchaseProvider).errorMessage ?? context.l10n.settingsPurchaseFailed;
    showTopToast(context, message);
    ref.read(purchaseProvider.notifier).reset();
    return false;
  }

  showTopToast(context, context.l10n.paymentCompleteMsg);
  ref.read(purchaseProvider.notifier).reset();
  return true;
}

Future<bool?> _showAdditionalPetPaymentDialog(
  BuildContext context,
  WidgetRef ref, {
  required int petCount,
}) {
  final purchaseState = ref.read(purchaseProvider);
  final priceLabel = purchaseState.additionalPetProduct?.price ?? '1,000원';
  final notAvailable = purchaseState.status == IapStatus.notAvailable;

  return showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(context.l10n.addNewFamilyMember),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.firstPetFreeDesc,
            style: const TextStyle(height: 1.55),
          ),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.primary50,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.primary200),
            ),
            child: Text(
              notAvailable
                  ? context.l10n.petsRegisteredStoreUnavailable('$petCount')
                  : context.l10n.petsRegisteredPayToAdd('$petCount', priceLabel),
              style: const TextStyle(
                fontSize: 13,
                height: 1.5,
                color: AppColors.primary800,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(ctx, false),
          child: Text(context.l10n.maybeLater),
        ),
        TextButton(
          onPressed: notAvailable ? null : () => Navigator.pop(ctx, true),
          child: Text(notAvailable
              ? context.l10n.unavailable
              : context.l10n.payAndAdd(priceLabel)),
        ),
      ],
    ),
  );
}
