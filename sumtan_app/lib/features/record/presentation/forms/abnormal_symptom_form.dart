import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/l10n/l10n_extension.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class AbnormalSymptomForm extends ConsumerStatefulWidget {
  const AbnormalSymptomForm({super.key});

  @override
  ConsumerState<AbnormalSymptomForm> createState() =>
      _AbnormalSymptomFormState();
}

class _AbnormalSymptomFormState extends ConsumerState<AbnormalSymptomForm> {
  DateTime _datetime = DateTime.now();
  String _symptom = '구토';
  final _customSymptomCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _symptomOptions = [
    '구토',
    '출혈',
    '경련/발작',
    '호흡곤란',
    '기타',
  ];

  bool get _showCustomInput => _symptom == '기타';

  @override
  void dispose() {
    _customSymptomCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final data = <String, dynamic>{
      'symptom': _symptom,
    };
    if (_showCustomInput && _customSymptomCtrl.text.trim().isNotEmpty) {
      data['custom_symptom'] = _customSymptomCtrl.text.trim();
    }
    final media = await _mediaController.saveToLocalFilesWithProgress(context);
    if (media.isNotEmpty) data['media'] = media;

    final record = Record(
      petId: pet!.id!,
      category: 'abnormal_symptom',
      recordedAt: du.toIso8601(_datetime),
      dataJson: data,
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
      showTopToast(context, context.l10n.abnormalSymptomRecordSaved);
      Navigator.pop(context, true);
    }
  }

  List<String> _symptomLabels(BuildContext context) {
    final l10n = context.l10n;
    return _symptomOptions
        .map((v) => switch (v) {
              '구토' => l10n.vomiting,
              '출혈' => l10n.bleeding,
              '경련/발작' => l10n.seizure,
              '호흡곤란' => l10n.dyspnea,
              '기타' => l10n.other,
              _ => v,
            })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.abnormalSymptomFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: l10n.abnormalSymptomType,
          options: _symptomOptions,
          optionLabels: _symptomLabels(context),
          selected: _symptom,
          onChanged: (v) => setState(() => _symptom = v),
        ),
        if (_showCustomInput) ...[
          const SizedBox(height: AppSpacing.space4),
          FormInputField(
            label: l10n.customSymptom,
            required: false,
            controller: _customSymptomCtrl,
            hint: l10n.customSymptomPlaceholder,
          ),
        ],
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
