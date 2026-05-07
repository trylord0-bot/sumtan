import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;

class FormShell extends StatelessWidget {
  final String title;
  final VoidCallback onSave;
  final List<Widget> children;

  const FormShell({
    super.key,
    required this.title,
    required this.onSave,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (_, ctrl) => Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.radiusXl),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40, height: 4,
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(AppRadius.radiusFull),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.space5, AppSpacing.space4,
                AppSpacing.space5, AppSpacing.space2,
              ),
              child: Row(
                children: [
                  Text(title, style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700,
                    color: AppColors.gray900,
                  )),
                  const Spacer(),
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
                controller: ctrl,
                padding: const EdgeInsets.all(AppSpacing.space5),
                children: children,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.space5, AppSpacing.space3,
                AppSpacing.space5, AppSpacing.space5,
              ),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: onSave,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary400,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppRadius.radiusXl),
                      ),
                    ),
                    child: const Text('저장하기', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700,
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormDateTimePicker extends StatelessWidget {
  final DateTime value;
  final ValueChanged<DateTime> onChanged;

  const FormDateTimePicker({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _PickerChip(
          icon: Icons.calendar_today_outlined,
          label: du.formatMonthDay(value),
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: value,
              firstDate: DateTime(2020),
              lastDate: DateTime.now().add(const Duration(days: 1)),
            );
            if (picked != null) {
              onChanged(DateTime(picked.year, picked.month, picked.day,
                  value.hour, value.minute));
            }
          },
        )),
        const SizedBox(width: AppSpacing.space2),
        Expanded(child: _PickerChip(
          icon: Icons.access_time_outlined,
          label: du.formatTime(value),
          onTap: () async {
            final picked = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.fromDateTime(value),
            );
            if (picked != null) {
              onChanged(DateTime(value.year, value.month, value.day,
                  picked.hour, picked.minute));
            }
          },
        )),
      ],
    );
  }
}

class _PickerChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _PickerChip({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.space3, vertical: AppSpacing.space2,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          border: Border.all(color: AppColors.primary100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 16, color: AppColors.primary600),
            const SizedBox(width: 6),
            Text(label, style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500,
              color: AppColors.primary900,
            )),
          ],
        ),
      ),
    );
  }
}

class FormFieldLabel extends StatelessWidget {
  final String label;
  final bool required;

  const FormFieldLabel(
    this.label, {
    super.key,
    this.required = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      required ? '$label *' : label,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.gray700,
      ),
    );
  }
}

class FormSegmentRow extends StatelessWidget {
  final String label;
  final bool required;
  final List<String> options;
  final String selected;
  final ValueChanged<String> onChanged;

  const FormSegmentRow({
    super.key,
    required this.label,
    this.required = true,
    required this.options,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label, required: required),
        const SizedBox(height: AppSpacing.space2),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: AppColors.gray100,
            borderRadius: BorderRadius.circular(AppRadius.radiusSm),
            border: Border.all(color: AppColors.gray200),
          ),
          child: Row(
            children: options.map((opt) {
              final sel = selected == opt;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onChanged(opt),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: sel ? AppColors.primary400 : Colors.transparent,
                      borderRadius: BorderRadius.circular(AppRadius.radiusSm - 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(opt, style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: sel ? AppColors.white : AppColors.gray500,
                    )),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class FormInputField extends StatelessWidget {
  final String label;
  final bool required;
  final TextEditingController controller;
  final String hint;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const FormInputField({
    super.key,
    required this.label,
    this.required = true,
    required this.controller,
    required this.hint,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(label, required: required),
        const SizedBox(height: AppSpacing.space2),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(hintText: hint),
          style: const TextStyle(fontSize: 16, color: AppColors.gray900),
        ),
      ],
    );
  }
}

class FormMemoField extends StatelessWidget {
  final TextEditingController controller;

  const FormMemoField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FormFieldLabel('메모', required: false),
        const SizedBox(height: AppSpacing.space2),
        TextFormField(
          controller: controller,
          maxLines: 3,
          decoration: const InputDecoration(hintText: '자유롭게 메모를 남겨보세요'),
          style: const TextStyle(fontSize: 16, color: AppColors.gray900),
        ),
      ],
    );
  }
}

class FormTagSelector extends StatefulWidget {
  final String label;
  final bool required;
  final List<String> options;
  final List<String> selected;
  final ValueChanged<List<String>> onChanged;

  const FormTagSelector({
    super.key,
    required this.label,
    this.required = true,
    required this.options,
    required this.selected,
    required this.onChanged,
  });

  @override
  State<FormTagSelector> createState() => _FormTagSelectorState();
}

class _FormTagSelectorState extends State<FormTagSelector> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormFieldLabel(widget.label, required: widget.required),
        const SizedBox(height: AppSpacing.space2),
        if (widget.selected.isNotEmpty) ...[
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.selected.map((tag) => Container(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 5, bottom: 5),
              decoration: BoxDecoration(
                color: AppColors.primary100,
                borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                border: Border.all(color: AppColors.primary400),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(tag, style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary900,
                  )),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      final updated = List<String>.from(widget.selected)..remove(tag);
                      widget.onChanged(updated);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 14,
                      color: AppColors.primary600,
                    ),
                  ),
                ],
              ),
            )).toList(),
          ),
          const SizedBox(height: AppSpacing.space2),
        ],
        GestureDetector(
          onTap: () => setState(() => _expanded = !_expanded),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            decoration: BoxDecoration(
              color: AppColors.primary50,
              borderRadius: BorderRadius.circular(AppRadius.radiusFull),
            ),
            child: const Text('+ 추가', style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.primary600,
            )),
          ),
        ),
        if (_expanded) ...[
          const SizedBox(height: AppSpacing.space2),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.radiusMd),
            child: Column(
              children: widget.options.map((opt) {
                final isSelected = widget.selected.contains(opt);
                return GestureDetector(
                  onTap: isSelected ? null : () {
                    final updated = List<String>.from(widget.selected)..add(opt);
                    widget.onChanged(updated);
                  },
                  child: Container(
                    width: double.infinity,
                    color: isSelected ? AppColors.gray300 : AppColors.gray100,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Text(
                      opt,
                      style: TextStyle(
                        fontSize: 14,
                        color: isSelected ? AppColors.gray400 : AppColors.gray700,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ],
    );
  }
}
