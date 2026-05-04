import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';

void showAlarmCompleteDialog(BuildContext context, Alarm alarm) {
  showDialog(
    context: context,
    builder: (ctx) => _AlarmCompleteDialog(alarm: alarm),
  );
}

class _AlarmCompleteDialog extends ConsumerWidget {
  final Alarm alarm;
  const _AlarmCompleteDialog({required this.alarm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(alarmListProvider.notifier);
    final typeLabel = alarmTypeLabel(alarm.type);
    final displayName = alarm.label ?? typeLabel;

    return AlertDialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
      ),
      contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(alarmTypeEmoji(alarm.type), style: const TextStyle(fontSize: 36)),
          const SizedBox(height: AppSpacing.space3),
          Text('$typeLabel을 완료했나요?', style: AppTypography.heading3),
          const SizedBox(height: AppSpacing.space2),
          Text(
            '$displayName 을(를)\n오늘 기록에 자동으로 저장할게요.',
            style: const TextStyle(fontSize: 13, color: AppColors.gray600, height: 1.6),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            '기록 → $typeLabel 항목에서 확인할 수 있어요',
            style: const TextStyle(fontSize: 12, color: AppColors.gray400),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.gray100,
                  foregroundColor: AppColors.gray600,
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('취소',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary400,
                  foregroundColor: AppColors.white,
                  padding: const EdgeInsets.symmetric(vertical: 11),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                  ),
                ),
                onPressed: () async {
                  await notifier.markDone(alarm.id!);
                  if (context.mounted) {
                    Navigator.pop(context);
                    showTopToast(context, '$displayName 완료가 기록됐어요 ✅');
                  }
                },
                child: const Text('✅ 완료 저장',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
