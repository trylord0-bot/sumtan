import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';
import 'alarm_complete_dialog.dart';

const _amber50  = Color(0xFFFFFBEB);
const _amber400 = Color(0xFFFBBF24);

class AlarmListItemPending extends ConsumerWidget {
  final Alarm alarm;
  const AlarmListItemPending({super.key, required this.alarm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(alarmListProvider.notifier);

    return Dismissible(
      key: Key('alarm_pending_${alarm.id}'),
      direction: DismissDirection.endToStart,
      background: _DeleteBg(),
      confirmDismiss: (_) async => true,
      onDismissed: (_) {
        notifier.delete(alarm.id!);
        showTopToast(context, '알림이 삭제됐어요 🗑️');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: _amber50,
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          border: const Border(
            left: BorderSide(color: _amber400, width: 3),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _TypeIconBox(type: alarm.type),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          alarm.label ?? alarmTypeLabel(alarm.type),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray900,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          _dateText(),
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.gray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: _amber400,
                      borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                    ),
                    child: const Text('오늘',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  // Align with body text (icon 40px + gap 12px)
                  const SizedBox(width: 52),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showAlarmCompleteDialog(context, alarm),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.primary400,
                          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary400.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: const Text('✅ 완료했어요',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: AppColors.white)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showTopToast(context, '나중에 다시 확인해드릴게요 🕐'),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                          border: Border.all(color: AppColors.gray300, width: 1.5),
                        ),
                        alignment: Alignment.center,
                        child: const Text('🕐 나중에',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray500)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _dateText() {
    if (alarm.scheduledAt == null) return '';
    final dt = DateTime.parse(alarm.scheduledAt!);
    final ampm = dt.hour < 12 ? '오전' : '오후';
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    return '오늘 · $ampm $h:$m';
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
      margin: const EdgeInsets.only(bottom: 10),
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
