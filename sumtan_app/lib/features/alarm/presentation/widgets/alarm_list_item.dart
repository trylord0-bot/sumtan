import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';
import 'alarm_form_sheet.dart';

// Amber colors not in AppColors
const _amber400 = Color(0xFFFBBF24);
const _amber700 = Color(0xFFB45309);

class AlarmListItem extends ConsumerWidget {
  final Alarm alarm;
  const AlarmListItem({super.key, required this.alarm});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(alarmListProvider.notifier);
    final status = alarm.status;

    return Dismissible(
      key: Key('alarm_${alarm.id}'),
      direction: DismissDirection.endToStart,
      background: _DeleteBackground(),
      confirmDismiss: (_) async => true,
      onDismissed: (_) {
        notifier.delete(alarm.id!);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('알림이 삭제됐어요 🗑️')),
        );
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: status == AlarmStatus.done ? null : () => _onTap(context),
        child: Opacity(
          opacity: status == AlarmStatus.done ? 0.55 : 1.0,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: _cardDecoration(status),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  _TypeIconBox(type: alarm.type),
                  const SizedBox(width: 12),
                  Expanded(child: _InfoColumn(alarm: alarm, status: status)),
                  const SizedBox(width: 8),
                  _RightWidget(alarm: alarm, status: status, notifier: notifier),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    if (alarm.status == AlarmStatus.past) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => AlarmFormSheet(editAlarm: alarm, isReschedule: true),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => AlarmFormSheet(editAlarm: alarm),
      );
    }
  }

  BoxDecoration _cardDecoration(AlarmStatus status) {
    Color borderColor = Colors.transparent;
    double borderWidth = 0;
    Color bgColor = AppColors.white;

    switch (status) {
      case AlarmStatus.past:
        borderColor = AppColors.gray300;
        borderWidth = 3;
      case AlarmStatus.done:
        borderColor = AppColors.primary200;
        borderWidth = 3;
      case AlarmStatus.repeat:
        borderColor = AppColors.primary200;
        borderWidth = 3;
      case AlarmStatus.upcoming:
        final days = alarm.daysUntil ?? 999;
        if (days <= 3) {
          borderColor = AppColors.primary400;
          borderWidth = 3;
        }
      default:
        break;
    }

    return BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      border: borderWidth > 0
          ? Border(left: BorderSide(color: borderColor, width: borderWidth))
          : null,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.04),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
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

class _InfoColumn extends StatelessWidget {
  final Alarm alarm;
  final AlarmStatus status;
  const _InfoColumn({required this.alarm, required this.status});

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: status == AlarmStatus.done ? AppColors.gray400 : AppColors.gray900,
      decoration: status == AlarmStatus.done ? TextDecoration.lineThrough : null,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          alarm.label ?? alarmTypeLabel(alarm.type),
          style: titleStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        _Subtitle(alarm: alarm, status: status),
      ],
    );
  }
}

class _Subtitle extends StatelessWidget {
  final Alarm alarm;
  final AlarmStatus status;
  const _Subtitle({required this.alarm, required this.status});

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case AlarmStatus.done:
        final doneDate = alarm.doneAt != null
            ? DateFormat('MM/dd').format(DateTime.parse(alarm.doneAt!))
            : '';
        return Text('$doneDate · 완료됨',
            style: const TextStyle(fontSize: 12, color: AppColors.gray400));

      case AlarmStatus.past:
        final dateStr = alarm.scheduledAt != null
            ? DateFormat('MM/dd').format(DateTime.parse(alarm.scheduledAt!))
            : '';
        return Text('⚠️ $dateStr 지남 · 탭해서 재예약',
            style: const TextStyle(fontSize: 12, color: _amber700));

      case AlarmStatus.repeat:
        final timeStr = alarm.repeatTime ?? '';
        final ruleLabel = _repeatRuleLabel(alarm.repeatRule);
        return Text('$ruleLabel · $timeStr',
            style: const TextStyle(fontSize: 12, color: AppColors.gray500));

      default:
        // upcoming
        final dateStr = alarm.scheduledAt != null
            ? DateFormat('MM월 dd일 (E)', 'ko').format(DateTime.parse(alarm.scheduledAt!))
            : (alarm.repeatTime ?? '');
        return Text(dateStr,
            style: const TextStyle(fontSize: 12, color: AppColors.gray500));
    }
  }

  String _repeatRuleLabel(String rule) {
    switch (rule) {
      case 'daily':   return '매일';
      case 'weekday': return '평일';
      case 'weekend': return '주말';
      case 'weekly':  return '매주';
      case 'monthly': return '매달';
      default:        return '';
    }
  }
}

class _RightWidget extends ConsumerWidget {
  final Alarm alarm;
  final AlarmStatus status;
  final AlarmNotifier notifier;
  const _RightWidget({required this.alarm, required this.status, required this.notifier});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (status == AlarmStatus.done) {
      return Container(
        width: 24, height: 24,
        decoration: const BoxDecoration(
          color: AppColors.success400,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.check, color: AppColors.white, size: 14),
      );
    }

    if (status == AlarmStatus.past) {
      return const Icon(Icons.chevron_right, color: AppColors.gray400, size: 20);
    }

    // D-badge + toggle for upcoming & repeat
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (status == AlarmStatus.upcoming) _DBadge(daysUntil: alarm.daysUntil),
        if (status == AlarmStatus.upcoming) const SizedBox(height: 6),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {},
          child: Transform.scale(
            scale: 0.8,
            child: Switch(
              value: alarm.isEnabled,
              onChanged: (v) => notifier.toggle(alarm.id!, v),
              activeThumbColor: AppColors.primary400,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ),
      ],
    );
  }
}

class _DBadge extends StatelessWidget {
  final int? daysUntil;
  const _DBadge({this.daysUntil});

  @override
  Widget build(BuildContext context) {
    if (daysUntil == null) return const SizedBox.shrink();
    final days = daysUntil!;

    Color bg;
    Color fg;
    String text;

    if (days == 0) {
      bg = _amber400; fg = AppColors.white; text = 'D-Day';
    } else if (days < 0) {
      bg = AppColors.gray200; fg = AppColors.gray400; text = 'D+${-days}';
    } else if (days <= 3) {
      bg = AppColors.primary400; fg = AppColors.white; text = 'D-$days';
    } else {
      bg = AppColors.primary100; fg = AppColors.primary700; text = 'D-$days';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(AppRadius.radiusFull),
      ),
      child: Text(text,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: fg)),
    );
  }
}

class _DeleteBackground extends StatelessWidget {
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
