import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import '../../../../app/widgets/app_toast.dart';
import 'media_attachment_field.dart';

class ConditionForm extends ConsumerStatefulWidget {
  const ConditionForm({super.key});

  @override
  ConsumerState<ConditionForm> createState() => _ConditionFormState();
}

class _ConditionFormState extends ConsumerState<ConditionForm> {
  int _score = 3;
  DateTime _datetime = DateTime.now();
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();
  final _symptomTags = const [
    '구토',
    '기침',
    '무기력',
    '식욕부진',
    '설사',
    '콧물',
    '재채기',
    '떨림'
  ];
  final _selectedTags = <String>{};

  @override
  void dispose() {
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;
    final media = await _mediaController.saveToLocalFiles();
    final record = Record(
      petId: pet!.id!,
      category: 'condition',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'score': _score,
        'symptoms': _selectedTags.toList(),
        if (media.isNotEmpty) 'media': media,
      },
      memo: _memoCtrl.text.isEmpty ? null : _memoCtrl.text,
      createdAt: du.toIso8601(DateTime.now()),
    );
    await ref.read(recordNotifierProvider.notifier).add(record);
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    if (mounted) {
      showTopToast(context, context.l10n.conditionRecordSaved);
      Navigator.pop(context, true);
    }
  }

  String _localizeSymptom(BuildContext context, String val) {
    final l10n = context.l10n;
    return switch (val) {
      '구토' => l10n.vomiting,
      '기침' => l10n.cough,
      '무기력' => l10n.lethargy,
      '식욕부진' => l10n.lossOfAppetite,
      '설사' => l10n.diarrhea,
      '콧물' => l10n.runnyNose,
      '재채기' => l10n.sneezing,
      '떨림' => l10n.trembling,
      _ => val,
    };
  }

  Color _scoreColor(int s) {
    if (s >= 4) return AppColors.success400;
    if (s == 3) return AppColors.warning400;
    return AppColors.danger400;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.conditionFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormFieldLabel(l10n.conditionScore),
        const SizedBox(height: AppSpacing.space2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(5, (i) {
            final val = i + 1;
            final selected = _score == val;
            final color = _scoreColor(val);
            return GestureDetector(
              onTap: () => setState(() => _score = val),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected ? color : color.withValues(alpha: 0.2),
                ),
                alignment: Alignment.center,
                child: Text('$val',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: selected ? AppColors.white : color,
                    )),
              ),
            );
          }),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormFieldLabel(l10n.symptomTags, required: false),
        const SizedBox(height: AppSpacing.space2),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: _symptomTags.map((tag) {
            final sel = _selectedTags.contains(tag);
            return GestureDetector(
              onTap: () => setState(() {
                sel ? _selectedTags.remove(tag) : _selectedTags.add(tag);
              }),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: sel ? AppColors.primary100 : AppColors.gray100,
                  borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                  border: Border.all(
                    color: sel ? AppColors.primary400 : AppColors.gray200,
                  ),
                ),
                child: Text(_localizeSymptom(context, tag),
                    style: TextStyle(
                      fontSize: 13,
                      color: sel ? AppColors.primary900 : AppColors.gray600,
                      fontWeight: sel ? FontWeight.w600 : FontWeight.w400,
                    )),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
