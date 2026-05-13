import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/widgets/localized_pickers.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import '../../data/alarm_model.dart';
import '../../provider/alarm_provider.dart';

// Amber color constants
const _amber50 = Color(0xFFFFFBEB);
const _amber100 = Color(0xFFFEF3C7);
const _amber400 = Color(0xFFFBBF24);
const _amber700 = Color(0xFFB45309);

class AlarmFormSheet extends ConsumerStatefulWidget {
  final String? type;
  final Alarm? editAlarm;
  final bool isReschedule;

  const AlarmFormSheet({
    super.key,
    this.type,
    this.editAlarm,
    this.isReschedule = false,
  });

  @override
  ConsumerState<AlarmFormSheet> createState() => _AlarmFormSheetState();
}

class _AlarmFormSheetState extends ConsumerState<AlarmFormSheet> {
  late String _type;
  final _labelCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();
  final _extraCtrl = TextEditingController(); // hospital name

  DateTime? _scheduledDate;
  TimeOfDay? _scheduledTime;
  TimeOfDay? _repeatTime;
  String _repeatRule = 'none';
  Set<String> _alarmDays = {'D-0'};

  bool get _isEdit => widget.editAlarm != null;

  @override
  void initState() {
    super.initState();
    _type = widget.editAlarm?.type ?? widget.type ?? 'vaccination';

    // Sensible defaults per type
    if (_type == 'meal' || _type == 'daily') _repeatRule = 'daily';

    final a = widget.editAlarm;
    if (a != null) {
      _labelCtrl.text = a.label ?? '';
      _memoCtrl.text = a.memo ?? '';
      _repeatRule = a.repeatRule;

      // In reschedule mode date is intentionally cleared
      if (a.scheduledAt != null && !widget.isReschedule) {
        final dt = DateTime.parse(a.scheduledAt!);
        _scheduledDate = dt;
        _scheduledTime = TimeOfDay(hour: dt.hour, minute: dt.minute);
      }
      if (a.repeatTime != null) {
        final parts = a.repeatTime!.split(':');
        _repeatTime = TimeOfDay(
          hour: int.parse(parts[0]),
          minute: int.parse(parts[1]),
        );
      }
      if (a.alarmDays != null && a.alarmDays!.isNotEmpty) {
        _alarmDays = a.alarmDays!.split(',').toSet();
      }
    }
  }

  @override
  void dispose() {
    _labelCtrl.dispose();
    _memoCtrl.dispose();
    _extraCtrl.dispose();
    super.dispose();
  }

  // ── Validation ─────────────────────────────────────────────────────────────

  String? _validate(BuildContext context) {
    final l10n = context.l10n;
    switch (_type) {
      case 'vaccination':
        if (_labelCtrl.text.trim().isEmpty) return l10n.hintVaccineName;
        if (_scheduledDate == null) return l10n.hintSelectScheduledDate;
        if (_scheduledTime == null) return l10n.hintSelectScheduledTime;
      case 'hospital':
        if (_labelCtrl.text.trim().isEmpty) return l10n.hintVisitPurpose;
        if (_scheduledDate == null) return l10n.hintSelectAppointmentDate;
        if (_scheduledTime == null) return l10n.hintSelectAppointmentTime;
      case 'medication':
        if (_labelCtrl.text.trim().isEmpty) return l10n.hintMedicineNameInput;
        if (_repeatRule == 'none' && _scheduledDate == null) {
          return l10n.hintSelectMedicationDate;
        }
        if (_repeatRule != 'none' && _repeatTime == null) {
          return l10n.hintSelectMedicationTime;
        }
      case 'meal':
        if (_labelCtrl.text.trim().isEmpty) return l10n.hintAlarmName;
        if (_repeatTime == null) return l10n.hintSelectMealTime;
      case 'daily':
        if (_repeatTime == null) return l10n.hintSelectAlarmTime;
    }
    return null;
  }

  // ── Save ───────────────────────────────────────────────────────────────────

  bool _saving = false;

  Future<void> _save() async {
    if (_saving) return;

    // Validation
    final err = _validate(context);
    if (err != null) {
      showTopToast(context, err);
      return;
    }

    // Pet guard
    final pet = ref.read(selectedPetProvider);
    if (pet == null) {
      showTopToast(context, context.l10n.noPetRegisterFirst);
      return;
    }

    setState(() => _saving = true);

    try {
      final notifier = ref.read(alarmListProvider.notifier);

      String? scheduledAt;
      String? repeatTime;
      String repeatRule = _repeatRule;

      if (_scheduledDate != null) {
        final needsRequiredTime = _type == 'vaccination' || _type == 'hospital';
        final dt = DateTime(
          _scheduledDate!.year,
          _scheduledDate!.month,
          _scheduledDate!.day,
          needsRequiredTime ? _scheduledTime!.hour : _scheduledTime?.hour ?? 9,
          needsRequiredTime
              ? _scheduledTime!.minute
              : _scheduledTime?.minute ?? 0,
        );
        scheduledAt = dt.toIso8601String();
      }

      if (_repeatTime != null) {
        repeatTime =
            '${_repeatTime!.hour.toString().padLeft(2, '0')}:${_repeatTime!.minute.toString().padLeft(2, '0')}';
      }

      // Repeating types: no scheduledAt
      if (_type == 'meal' ||
          _type == 'daily' ||
          (_type == 'medication' && _repeatRule != 'none')) {
        scheduledAt = null;
        repeatRule = _repeatRule;
      }
      // Vaccination: notify time goes into repeatTime
      if (_type == 'vaccination' && _scheduledTime != null) {
        repeatTime =
            '${_scheduledTime!.hour.toString().padLeft(2, '0')}:${_scheduledTime!.minute.toString().padLeft(2, '0')}';
      }

      final alarm = Alarm(
        id: widget.editAlarm?.id,
        petId: pet.id!,
        type: _type,
        label:
            _labelCtrl.text.trim().isNotEmpty ? _labelCtrl.text.trim() : null,
        scheduledAt: scheduledAt,
        repeatRule: repeatRule,
        repeatTime: repeatTime,
        isEnabled: widget.editAlarm?.isEnabled ?? true,
        isDone: false,
        createdAt:
            widget.editAlarm?.createdAt ?? DateTime.now().toIso8601String(),
        memo: _memoCtrl.text.trim().isNotEmpty ? _memoCtrl.text.trim() : null,
        alarmDays: _alarmDays.isEmpty ? null : _alarmDays.join(','),
      );

      if (widget.isReschedule) {
        await notifier.reschedule(alarm);
      } else if (_isEdit) {
        await notifier.update(alarm);
      } else {
        await notifier.add(alarm);
      }

      if (mounted) {
        showTopToast(
          context,
          widget.isReschedule
              ? context.l10n.alarmRescheduled
              : _isEdit
                  ? context.l10n.alarmUpdated
                  : context.l10n.alarmAdded,
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        setState(() => _saving = false);
        showTopToast(
          context,
          context.l10n.saveErrorMsg('$e'),
        );
      }
    }
  }

  // ── Delete ─────────────────────────────────────────────────────────────────

  void _onDelete() {
    final alarm = widget.editAlarm!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(context.l10n.deleteAlarmConfirm),
        content: Text(
          context.l10n.deleteAlarmWithPushMsg(
            alarm.label ?? localizedAlarmTypeLabel(context, alarm.type),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(context.l10n.commonCancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx); // close dialog
              Navigator.pop(context); // close sheet
              await ref.read(alarmListProvider.notifier).delete(alarm.id!);
              if (mounted) {
                showTopToast(context, context.l10n.alarmDeleted);
              }
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.danger600),
            child: Text(context.l10n.commonDelete),
          ),
        ],
      ),
    );
  }

  // ── Build ──────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final kb = MediaQuery.viewInsetsOf(context).bottom;
    final emoji = alarmTypeEmoji(_type);
    final typeLabel = localizedAlarmTypeLabel(context, _type);
    final title = _isEdit
        ? '$emoji $typeLabel ${context.l10n.editAlarm}'
        : '$emoji $typeLabel ${context.l10n.addAlarm}';

    return AnimatedPadding(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      padding: EdgeInsets.only(bottom: kb),
      child: DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.35,
        maxChildSize: 0.95,
        expand: false,
        builder: (_, scrollController) => Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              // Drag handle
              Container(
                margin: const EdgeInsets.only(top: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.gray300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 12, 8),
                child: Row(
                  children: [
                    Expanded(child: Text(title, style: AppTypography.heading3)),
                    IconButton(
                      icon: const Icon(Icons.close, color: AppColors.gray500),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, color: AppColors.gray200),
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.fromLTRB(20, 16, 20, 20 + kb),
                  children: [
                    if (widget.isReschedule) ...[
                      _RescheduleBanner(),
                      const SizedBox(height: AppSpacing.space4),
                    ],
                    _buildFields(),
                    const SizedBox(height: AppSpacing.space6),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _saving
                              ? AppColors.primary200
                              : AppColors.primary400,
                          foregroundColor: AppColors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppRadius.radiusLg),
                          ),
                        ),
                        onPressed: _saving ? null : _save,
                        child: _saving
                            ? const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: AppColors.white,
                                ),
                              )
                            : Text(
                                widget.isReschedule
                                    ? context.l10n.reschedule
                                    : context.l10n.save,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                      ),
                    ),

                    // Delete button (edit/reschedule mode only)
                    if (_isEdit) ...[
                      const SizedBox(height: AppSpacing.space3),
                      SizedBox(
                        width: double.infinity,
                        height: 46,
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.danger600,
                            side: const BorderSide(color: AppColors.danger400),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(AppRadius.radiusLg),
                            ),
                          ),
                          onPressed: _onDelete,
                          icon: const Icon(Icons.delete_outline, size: 18),
                          label: Text(context.l10n.deleteThisAlarm),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFields() {
    switch (_type) {
      case 'vaccination':
        return _buildVaccinationFields();
      case 'hospital':
        return _buildHospitalFields();
      case 'medication':
        return _buildMedicationFields();
      case 'meal':
        return _buildMealFields();
      case 'daily':
        return _buildDailyFields();
      default:
        return const SizedBox.shrink();
    }
  }

  // ── Vaccination fields ──────────────────────────────────────────────────────

  Widget _buildVaccinationFields() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.vaccineNameRequired),
        _TextInput(controller: _labelCtrl, hint: l10n.vaccineNameExample),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.scheduledDateRequired),
        _DateButton(
          date: _scheduledDate,
          isReschedule: widget.isReschedule,
          onPick: _pickDate,
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.reminderTiming),
        _MultiChips(
          options: [
            ('D-7', 'D-7'),
            ('D-3', 'D-3'),
            ('D-1', 'D-1'),
            ('D-0', l10n.sameDay)
          ],
          selected: _alarmDays,
          onChanged: (v) => setState(() => _alarmDays = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.reminderTimeRequired),
        _TimeButton(time: _scheduledTime, onPick: _pickTime),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.memo),
        _TextInput(
            controller: _memoCtrl, hint: l10n.memoInputHint, maxLines: 2),
      ],
    );
  }

  // ── Hospital fields ─────────────────────────────────────────────────────────

  Widget _buildHospitalFields() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.visitPurposeRequired),
        _TextInput(controller: _labelCtrl, hint: l10n.visitPurposeExample),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.appointmentDateTimeRequired),
        Row(
          children: [
            Expanded(
              child: _DateButton(
                date: _scheduledDate,
                isReschedule: widget.isReschedule,
                onPick: _pickDate,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _TimeButton(time: _scheduledTime, onPick: _pickTime),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.reminderTiming),
        _MultiChips(
          options: [('D-1', 'D-1'), ('D-0', l10n.sameDay)],
          selected: _alarmDays,
          onChanged: (v) => setState(() => _alarmDays = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.hospitalName),
        _TextInput(controller: _extraCtrl, hint: l10n.hospitalNameHint),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.memo),
        _TextInput(
            controller: _memoCtrl, hint: l10n.memoInputHint, maxLines: 2),
      ],
    );
  }

  // ── Medication fields ───────────────────────────────────────────────────────

  Widget _buildMedicationFields() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.medicineNameRequired),
        _TextInput(controller: _labelCtrl, hint: l10n.medicineNameExample),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.repeatRequired),
        _SingleChips(
          options: [
            ('none', l10n.none),
            ('daily', l10n.daily),
            ('weekly', l10n.weekly),
            ('monthly', l10n.monthly),
          ],
          selected: _repeatRule,
          onChanged: (v) => setState(() => _repeatRule = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        if (_repeatRule == 'none') ...[
          _FieldLabel(l10n.medicationDateTimeRequired),
          Row(
            children: [
              Expanded(
                child: _DateButton(
                  date: _scheduledDate,
                  isReschedule: widget.isReschedule,
                  onPick: _pickDate,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _TimeButton(time: _scheduledTime, onPick: _pickTime),
              ),
            ],
          ),
        ] else ...[
          _FieldLabel(l10n.medicationTimeRequired),
          _TimeButton(time: _repeatTime, onPick: _pickRepeatTime),
        ],
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.memo),
        _TextInput(
            controller: _memoCtrl, hint: l10n.memoInputHint, maxLines: 2),
      ],
    );
  }

  // ── Meal fields ─────────────────────────────────────────────────────────────

  Widget _buildMealFields() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.alarmNameRequired),
        _TextInput(controller: _labelCtrl, hint: l10n.mealTimeExample),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.mealTimeRequired),
        _TimeButton(time: _repeatTime, onPick: _pickRepeatTime),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.repeatRequired),
        _SingleChips(
          options: [
            ('daily', l10n.daily),
            ('weekday', l10n.weekdaysOnly),
            ('weekend', l10n.weekendsOnly),
          ],
          selected: _repeatRule,
          onChanged: (v) => setState(() => _repeatRule = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.memo),
        _TextInput(
            controller: _memoCtrl, hint: l10n.memoInputHint, maxLines: 2),
      ],
    );
  }

  // ── Daily reminder fields ───────────────────────────────────────────────────

  Widget _buildDailyFields() {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _FieldLabel(l10n.reminderTimeRequired),
        _TimeButton(time: _repeatTime, onPick: _pickRepeatTime),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.repeatRequired),
        _SingleChips(
          options: [
            ('daily', l10n.daily),
            ('weekday', l10n.weekdaysOnly),
            ('weekend', l10n.weekendsOnly),
          ],
          selected: _repeatRule,
          onChanged: (v) => setState(() => _repeatRule = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        _FieldLabel(l10n.alarmMessage),
        _TextInput(
          controller: _labelCtrl,
          hint: l10n.alarmMessageExample,
          maxLines: 2,
        ),
      ],
    );
  }

  // ── Pickers ─────────────────────────────────────────────────────────────────

  Future<void> _pickDate() async {
    final date = await showLocalizedDatePicker(
      context: context,
      initialDate: _scheduledDate ?? DateTime.now(),
    );
    if (date != null) setState(() => _scheduledDate = date);
  }

  Future<void> _pickTime() async {
    final time = await showWheelTimePicker(
      context: context,
      initialTime: _scheduledTime ?? const TimeOfDay(hour: 9, minute: 0),
    );
    if (time != null) setState(() => _scheduledTime = time);
  }

  Future<void> _pickRepeatTime() async {
    final time = await showWheelTimePicker(
      context: context,
      initialTime: _repeatTime ?? const TimeOfDay(hour: 8, minute: 0),
    );
    if (time != null) setState(() => _repeatTime = time);
  }
}

// ── Sub-widgets ────────────────────────────────────────────────────────────────

class _RescheduleBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.space3),
      decoration: BoxDecoration(
        color: _amber50,
        border: Border.all(color: _amber100),
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('⚠️', style: TextStyle(fontSize: 16)),
          const SizedBox(width: AppSpacing.space2),
          Expanded(
            child: Text(
              context.l10n.alarmPastDueMsg,
              style: const TextStyle(fontSize: 14, color: _amber700),
            ),
          ),
        ],
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: AppColors.gray700,
        ),
      ),
    );
  }
}

class _TextInput extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final int maxLines;

  const _TextInput({
    required this.controller,
    required this.hint,
    this.maxLines = 1,
  });

  @override
  State<_TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<_TextInput> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()..addListener(_scrollIntoView);
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_scrollIntoView)
      ..dispose();
    super.dispose();
  }

  void _scrollIntoView() {
    if (!_focusNode.hasFocus) return;

    Future<void>.delayed(const Duration(milliseconds: 280), () {
      if (!mounted || !_focusNode.hasFocus) return;

      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        alignmentPolicy: ScrollPositionAlignmentPolicy.keepVisibleAtEnd,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;

    return TextField(
      controller: widget.controller,
      focusNode: _focusNode,
      maxLines: widget.maxLines,
      scrollPadding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: keyboardInset + 120,
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(color: AppColors.gray400, fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          borderSide: const BorderSide(color: AppColors.gray200, width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          borderSide: const BorderSide(color: AppColors.gray200, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          borderSide: const BorderSide(color: AppColors.primary400, width: 1.5),
        ),
        filled: true,
        fillColor: AppColors.white,
      ),
    );
  }
}

class _DateButton extends StatelessWidget {
  final DateTime? date;
  final bool isReschedule;
  final VoidCallback onPick;

  const _DateButton({
    required this.date,
    required this.isReschedule,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    final hasDate = date != null;
    final Color bg = isReschedule
        ? _amber50
        : (hasDate ? AppColors.primary50 : AppColors.white);
    final Color bd = isReschedule
        ? _amber400
        : (hasDate ? AppColors.primary300 : AppColors.gray200);
    final Color fg = isReschedule
        ? _amber700
        : (hasDate ? AppColors.primary800 : AppColors.gray400);
    final String txt = hasDate
        ? formatLocalizedDate(context, date!)
        : (isReschedule ? context.l10n.reselectDate : context.l10n.selectDate);

    return GestureDetector(
      onTap: onPick,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          border: Border.all(color: bd, width: 1.5),
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_today_rounded, size: 16, color: fg),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                txt,
                style: TextStyle(fontSize: 14, color: fg),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeButton extends StatelessWidget {
  final TimeOfDay? time;
  final VoidCallback onPick;

  const _TimeButton({required this.time, required this.onPick});

  @override
  Widget build(BuildContext context) {
    final hasTime = time != null;
    final txt = hasTime
        ? formatLocalizedTimeOfDay(context, time!)
        : context.l10n.selectTime;

    return GestureDetector(
      onTap: onPick,
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: hasTime ? AppColors.primary50 : AppColors.white,
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          border: Border.all(
            color: hasTime ? AppColors.primary300 : AppColors.gray200,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.access_time_rounded,
                size: 16,
                color: hasTime ? AppColors.primary800 : AppColors.gray400),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                txt,
                style: TextStyle(
                    fontSize: 14,
                    color: hasTime ? AppColors.primary800 : AppColors.gray400),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MultiChips extends StatelessWidget {
  final List<(String, String)> options;
  final Set<String> selected;
  final ValueChanged<Set<String>> onChanged;

  const _MultiChips({
    required this.options,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options.map((opt) {
        final isSelected = selected.contains(opt.$1);
        return GestureDetector(
          onTap: () {
            final next = Set<String>.from(selected);
            if (isSelected) {
              if (next.length > 1) next.remove(opt.$1);
            } else {
              next.add(opt.$1);
            }
            onChanged(next);
          },
          child: _Chip(label: opt.$2, isSelected: isSelected),
        );
      }).toList(),
    );
  }
}

class _SingleChips extends StatelessWidget {
  final List<(String, String)> options;
  final String selected;
  final ValueChanged<String> onChanged;

  const _SingleChips({
    required this.options,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options
          .map((opt) => GestureDetector(
                onTap: () => onChanged(opt.$1),
                child: _Chip(label: opt.$2, isSelected: selected == opt.$1),
              ))
          .toList(),
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool isSelected;
  const _Chip({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary50 : AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusFull),
        border: Border.all(
          color: isSelected ? AppColors.primary400 : AppColors.gray300,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: isSelected ? AppColors.primary700 : AppColors.gray500,
        ),
      ),
    );
  }
}
