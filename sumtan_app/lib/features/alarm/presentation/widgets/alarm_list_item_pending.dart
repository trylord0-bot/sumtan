import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/widgets/localized_pickers.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';
import 'alarm_complete_dialog.dart';
import 'alarm_form_sheet.dart';

const _amber50 = Color(0xFFFFFBEB);
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
        showTopToast(context, context.l10n.alarmDeleted);
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
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => _openEditSheet(context),
                child: Row(
                  children: [
                    _TypeIconBox(type: alarm.type),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            alarm.label ?? localizedAlarmTypeLabel(context, alarm.type),
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
                            _dateText(context),
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.gray500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: _amber400,
                        borderRadius:
                            BorderRadius.circular(AppRadius.radiusFull),
                      ),
                      child: Text(
                        context.l10n.today,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
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
                          borderRadius:
                              BorderRadius.circular(AppRadius.radiusMd),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  AppColors.primary400.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Text(context.l10n.doneMsg,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: AppColors.white)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => _openSnoozeSheet(context),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                              BorderRadius.circular(AppRadius.radiusMd),
                          border:
                              Border.all(color: AppColors.gray300, width: 1.5),
                        ),
                        alignment: Alignment.center,
                        child: Text(context.l10n.laterMsg,
                            style: const TextStyle(
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

  void _openEditSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AlarmFormSheet(editAlarm: alarm),
    );
  }

  void _openSnoozeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _SnoozeSheet(alarm: alarm, outerContext: context),
    );
  }

  String _dateText(BuildContext context) {
    if (alarm.scheduledAt == null) return '';
    final dt = DateTime.parse(alarm.scheduledAt!);
    return '${context.l10n.today} · ${TimeOfDay.fromDateTime(dt).format(context)}';
  }
}

class _SnoozeSheet extends ConsumerStatefulWidget {
  final Alarm alarm;
  final BuildContext outerContext;

  const _SnoozeSheet({
    required this.alarm,
    required this.outerContext,
  });

  @override
  ConsumerState<_SnoozeSheet> createState() => _SnoozeSheetState();
}

class _SnoozeSheetState extends ConsumerState<_SnoozeSheet> {
  static const _options = [
    _SnoozeOption(label: '5분 뒤', minutes: 5),
    _SnoozeOption(label: '10분 뒤', minutes: 10),
    _SnoozeOption(label: '30분 뒤', minutes: 30),
    _SnoozeOption(label: '1시간 뒤', minutes: 60),
    _SnoozeOption(label: '3시간 뒤', minutes: 180),
    _SnoozeOption(label: '내일 같은 시간', minutes: 1440),
  ];

  late DateTime _customDate;
  late TimeOfDay _customTime;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    final scheduledAt = widget.alarm.scheduledAt;
    final scheduled =
        scheduledAt == null ? null : DateTime.tryParse(scheduledAt);
    final initial = scheduled == null || scheduled.isBefore(now)
        ? now.add(const Duration(minutes: 30))
        : scheduled;

    _customDate = DateTime(initial.year, initial.month, initial.day);
    _customTime = TimeOfDay(hour: initial.hour, minute: initial.minute);
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.alarm.label ?? localizedAlarmTypeLabel(context, widget.alarm.type);

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.gray300,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.space3),
              Row(
                children: [
                  _TypeIconBox(type: widget.alarm.type),
                  const SizedBox(width: AppSpacing.space3),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.l10n.snoozeQuestion,
                          style: AppTypography.heading3,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${alarmTypeEmoji(widget.alarm.type)} $title',
                          style: AppTypography.bodySm.copyWith(
                            color: AppColors.gray500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: AppColors.gray500),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.space4),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _options.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 48,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final option = _options[index];
                  return _SnoozeOptionButton(
                    option: option,
                    onTap: () => _selectOption(context, option),
                  );
                },
              ),
              const SizedBox(height: AppSpacing.space5),
              const Divider(height: 1, color: AppColors.gray200),
              const SizedBox(height: AppSpacing.space4),
              Text(
                context.l10n.snoozeCustom,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray700,
                ),
              ),
              const SizedBox(height: AppSpacing.space3),
              Row(
                children: [
                  Expanded(
                    child: _SnoozePickerButton(
                      icon: Icons.calendar_today_rounded,
                      label: formatLocalizedDate(context, _customDate),
                      onTap: _pickDate,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  Expanded(
                    child: _SnoozePickerButton(
                      icon: Icons.access_time_rounded,
                      label: formatLocalizedTimeOfDay(context, _customTime),
                      onTap: _pickTime,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.space3),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _selectCustom(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary400,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                    ),
                  ),
                  child: Text(
                    context.l10n.snoozeAtThisTime,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    final picked = await showLocalizedDatePicker(
      context: context,
      initialDate: _customDate,
    );
    if (picked != null && mounted) {
      setState(() {
        _customDate = DateTime(picked.year, picked.month, picked.day);
      });
    }
  }

  Future<void> _pickTime() async {
    final picked = await showWheelTimePicker(
      context: context,
      initialTime: _customTime,
    );
    if (picked != null && mounted) {
      setState(() => _customTime = picked);
    }
  }

  Future<void> _selectOption(BuildContext context, _SnoozeOption option) async {
    Navigator.pop(context);
    await ref
        .read(alarmListProvider.notifier)
        .snooze(widget.alarm, option.minutes);
    if (widget.outerContext.mounted) {
      showTopToast(
        widget.outerContext,
        widget.outerContext.l10n.snoozeConfirm(option.localizedLabel(widget.outerContext)),
      );
    }
  }

  Future<void> _selectCustom(BuildContext context) async {
    final selected = DateTime(
      _customDate.year,
      _customDate.month,
      _customDate.day,
      _customTime.hour,
      _customTime.minute,
    );

    if (!selected.isAfter(DateTime.now())) {
      showTopToast(context, context.l10n.selectFutureTime);
      return;
    }

    Navigator.pop(context);
    await ref.read(alarmListProvider.notifier).snoozeUntil(
          widget.alarm,
          selected,
        );
    if (widget.outerContext.mounted) {
      showTopToast(
        widget.outerContext,
        widget.outerContext.l10n.snoozeConfirm(formatLocalizedDateTime(widget.outerContext, selected)),
      );
    }
  }
}

class _SnoozeOption {
  final String label;
  final int minutes;

  const _SnoozeOption({
    required this.label,
    required this.minutes,
  });

  String localizedLabel(BuildContext context) {
    final l10n = context.l10n;
    switch (minutes) {
      case 5:
        return l10n.snooze5min;
      case 10:
        return l10n.snooze10min;
      case 30:
        return l10n.snooze30min;
      case 60:
        return l10n.snooze1hour;
      case 180:
        return l10n.snooze3hour;
      case 1440:
        return l10n.tomorrowSameTime;
      default:
        return label;
    }
  }
}

class _SnoozeOptionButton extends StatelessWidget {
  final _SnoozeOption option;
  final VoidCallback onTap;

  const _SnoozeOptionButton({
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary50,
      borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            border: Border.all(color: AppColors.primary200, width: 1.2),
          ),
          child: Text(
            option.localizedLabel(context),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.primary700,
            ),
          ),
        ),
      ),
    );
  }
}

class _SnoozePickerButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _SnoozePickerButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
        child: Container(
          height: 46,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            border: Border.all(color: AppColors.gray200, width: 1.5),
          ),
          child: Row(
            children: [
              Icon(icon, size: 16, color: AppColors.primary700),
              const SizedBox(width: AppSpacing.space2),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray700,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TypeIconBox extends StatelessWidget {
  final String type;
  const _TypeIconBox({required this.type});

  Color get _bg {
    switch (type) {
      case 'vaccination':
        return const Color(0xFFEDE9FE);
      case 'hospital':
        return const Color(0xFFFEE2E2);
      case 'medication':
        return const Color(0xFFFEF3C7);
      case 'meal':
        return const Color(0xFFDCFCE7);
      default:
        return AppColors.primary100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
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
