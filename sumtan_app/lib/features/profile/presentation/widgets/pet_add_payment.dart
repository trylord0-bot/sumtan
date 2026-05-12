import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/localization/app_localizations.dart';
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
    showTopToast(context, context.lt('지금은 스토어에 연결할 수 없어요. 잠시 후 다시 시도해 주세요.'));
    return false;
  }
  if (current.status == IapStatus.loading &&
      current.additionalPetProduct == null) {
    showTopToast(context, context.lt('결제 정보를 확인 중이에요. 잠시 후 다시 눌러 주세요.'));
    return false;
  }

  final paid =
      await ref.read(purchaseProvider.notifier).buyAdditionalPetCredit();
  if (!context.mounted) return false;
  if (!paid) {
    final message =
        ref.read(purchaseProvider).errorMessage ?? context.lt('결제에 실패했어요');
    showTopToast(context, message);
    ref.read(purchaseProvider.notifier).reset();
    return false;
  }

  showTopToast(context, context.lt('결제가 완료됐어요. 이제 새 친구 정보를 입력해 주세요.'));
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
      title: Text(context.lt('새 가족을 추가할까요?')),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.lt('첫 번째 반려동물은 무료로 등록할 수 있고, 두 번째 가족부터는 한 가족당 결제가 필요해요.'),
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
                  ? context.lt(
                      '현재 등록된 반려동물 {count}마리\n스토어 연결이 가능할 때 다시 시도해 주세요.',
                      args: {'count': '$petCount'})
                  : context.lt(
                      '현재 등록된 반려동물 {count}마리\n{price} 결제 후 새 가족을 추가할 수 있어요.',
                      args: {'count': '$petCount', 'price': priceLabel}),
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
          child: Text(context.lt('다음에 할게요')),
        ),
        TextButton(
          onPressed: notAvailable ? null : () => Navigator.pop(ctx, true),
          child: Text(notAvailable
              ? context.lt('연결 불가')
              : context.lt('{price} 결제하고 추가', args: {'price': priceLabel})),
        ),
      ],
    ),
  );
}
