import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
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
      contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('✅', style: TextStyle(fontSize: 40)),
          const SizedBox(height: AppSpacing.space3),
          Text('$typeLabel을 완료했나요?', style: AppTypography.heading3),
          const SizedBox(height: AppSpacing.space2),
          Text(
            '$displayName 기록을\n오늘 기록에 자동으로 저장할게요.\n'
            '기록 → $typeLabel 항목에서 확인할 수 있어요.',
            style: const TextStyle(fontSize: 14, color: AppColors.gray600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('취소',
              style: TextStyle(color: AppColors.gray500)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary400,
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            ),
          ),
          onPressed: () async {
            await notifier.markDone(alarm.id!);
            if (context.mounted) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$displayName 완료가 기록됐어요 ✅')),
              );
            }
          },
          child: const Text('✅ 완료 저장'),
        ),
      ],
    );
  }
}
