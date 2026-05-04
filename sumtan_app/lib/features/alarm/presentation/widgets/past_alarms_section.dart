import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';
import 'alarm_form_sheet.dart';

const _amber700 = Color(0xFFB45309);

class PastAlarmsSection extends ConsumerWidget {
  final List<Alarm> alarms;
  const PastAlarmsSection({super.key, required this.alarms});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (alarms.isEmpty) return const SizedBox.shrink();

    final visible = ref.watch(pastAlarmsVisibleProvider);
    final notifier = ref.read(pastAlarmsVisibleProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Toggle button
        GestureDetector(
          onTap: () => notifier.state = !visible,
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.space4, vertical: AppSpacing.space2),
            decoration: BoxDecoration(
              color: AppColors.gray100,
              borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  visible ? '지난 알림 숨기기' : '지난 알림 보기',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray600,
                  ),
                ),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.gray300,
                    borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                  ),
                  child: Text('${alarms.length}개',
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray700)),
                ),
                const SizedBox(width: 4),
                Icon(
                  visible ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  size: 18,
                  color: AppColors.gray500,
                ),
              ],
            ),
          ),
        ),

        if (visible)
          ...alarms.map((a) => _PastAlarmItem(alarm: a)),
      ],
    );
  }
}

class _PastAlarmItem extends ConsumerWidget {
  final Alarm alarm;
  const _PastAlarmItem({required this.alarm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(alarmListProvider.notifier);
    final isDone = alarm.status == AlarmStatus.done;

    return Dismissible(
      key: Key('past_alarm_${alarm.id}'),
      direction: DismissDirection.endToStart,
      background: _DeleteBg(),
      confirmDismiss: (_) async => true,
      onDismissed: (_) {
        notifier.delete(alarm.id!);
        showTopToast(context, '알림이 삭제됐어요 🗑️');
      },
      child: GestureDetector(
        onTap: isDone ? null : () => _openReschedule(context),
        child: Opacity(
          opacity: isDone ? 0.55 : 1.0,
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppRadius.radiusMd),
              border: Border(
                left: BorderSide(
                  color: isDone ? AppColors.primary200 : AppColors.gray300,
                  width: 3,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                _TypeIconBox(type: alarm.type),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        alarm.label ?? alarmTypeLabel(alarm.type),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: isDone ? AppColors.gray400 : AppColors.gray900,
                          decoration: isDone ? TextDecoration.lineThrough : null,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      isDone ? _doneSubtitle() : _pastSubtitle(),
                    ],
                  ),
                ),
                if (isDone)
                  Container(
                    width: 24, height: 24,
                    decoration: const BoxDecoration(
                      color: AppColors.success400,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.check, color: AppColors.white, size: 14),
                  )
                else
                  const Icon(Icons.chevron_right, color: AppColors.gray400, size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _doneSubtitle() {
    final dateStr = alarm.doneAt != null
        ? DateFormat('MM/dd').format(DateTime.parse(alarm.doneAt!))
        : '';
    return Text('$dateStr · 완료됨',
        style: const TextStyle(fontSize: 12, color: AppColors.gray300));
  }

  Widget _pastSubtitle() {
    final dateStr = alarm.scheduledAt != null
        ? DateFormat('MM/dd').format(DateTime.parse(alarm.scheduledAt!))
        : '';
    return Text('⚠️ $dateStr 지남 · 탭해서 재예약',
        style: const TextStyle(fontSize: 12, color: _amber700));
  }

  void _openReschedule(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AlarmFormSheet(editAlarm: alarm, isReschedule: true),
    );
  }
}

class _TypeIconBox extends StatelessWidget {
  final String type;
  const _TypeIconBox({required this.type});

  Color get _bg {
    switch (type) {
      case 'vaccination': return const Color(0xFFEDE9FE);
      case 'hospital':    return const Color(0xFFFEE2E2);
      case 'medication':  return const Color(0xFFFEF3C7);
      case 'meal':        return const Color(0xFFDCFCE7);
      default:            return AppColors.primary100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40, height: 40,
      decoration: BoxDecoration(
        color: _bg,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      alignment: Alignment.center,
      child: Text(alarmTypeEmoji(type), style: const TextStyle(fontSize: 20)),
    );
  }
}

class _DeleteBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.danger600,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: const Text('🗑️', style: TextStyle(fontSize: 22)),
    );
  }
}
