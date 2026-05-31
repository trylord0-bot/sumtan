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
import 'media_attachment_field.dart';
import '../../../../app/widgets/app_toast.dart';

class HospitalForm extends ConsumerStatefulWidget {
  const HospitalForm({super.key});

  @override
  ConsumerState<HospitalForm> createState() => _HospitalFormState();
}

class _HospitalFormState extends ConsumerState<HospitalForm> {
  DateTime _datetime = DateTime.now();
  final _hospitalNameCtrl = TextEditingController();
  String _visitType = '일반';
  List<String> _symptoms = [];
  final _diagnosisCtrl = TextEditingController();
  final _costCtrl = TextEditingController();
  DateTime? _nextVisit;
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _symptomOptions = [
    '구토',
    '기침',
    '무기력',
    '식욕부진',
    '설사',
    '콧물',
    '재채기',
    '떨림',
    '혈뇨',
    '혈변',
  ];

  @override
  void dispose() {
    _hospitalNameCtrl.dispose();
    _diagnosisCtrl.dispose();
    _costCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final cost =
        _costCtrl.text.isNotEmpty ? double.tryParse(_costCtrl.text) : null;

    final data = <String, dynamic>{
      'hospital_name':
          _hospitalNameCtrl.text.isEmpty ? null : _hospitalNameCtrl.text,
      'visit_type': _visitType,
      'symptoms': _symptoms,
      'diagnosis': _diagnosisCtrl.text.isEmpty ? null : _diagnosisCtrl.text,
    };
    if (cost != null) data['cost'] = cost;
    if (_nextVisit != null) data['next_visit'] = du.toIso8601(_nextVisit!);

    final media = await _mediaController.saveToLocalFilesWithProgress(context);
    if (media.isNotEmpty) data['media'] = media;

    final record = Record(
      petId: pet!.id!,
      category: 'hospital',
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
      showTopToast(context, context.l10n.vetVisitRecordSaved);
      Navigator.pop(context, true);
    }
  }

  List<String> _symptomLabels(BuildContext context) {
    final l10n = context.l10n;
    return _symptomOptions
        .map((v) => switch (v) {
              '구토' => l10n.vomiting,
              '기침' => l10n.cough,
              '무기력' => l10n.lethargy,
              '식욕부진' => l10n.lossOfAppetite,
              '설사' => l10n.diarrhea,
              '콧물' => l10n.runnyNose,
              '재채기' => l10n.sneezing,
              '떨림' => l10n.trembling,
              '혈뇨' => l10n.bloodInUrine,
              '혈변' => l10n.bloodInStool,
              _ => v,
            })
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.hospitalFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.hospitalName,
          required: false,
          controller: _hospitalNameCtrl,
          hint: l10n.hospitalNameExample,
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: l10n.visitType,
          options: const ['일반', '정기검진', '응급', '예방접종'],
          optionLabels: [
            l10n.general,
            l10n.regularCheckup,
            l10n.emergency,
            l10n.vaccination,
          ],
          selected: _visitType,
          onChanged: (v) => setState(() => _visitType = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: l10n.symptomTags,
          required: false,
          options: _symptomOptions,
          optionLabels: _symptomLabels(context),
          selected: _symptoms,
          onChanged: (v) => setState(() => _symptoms = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: l10n.treatmentContent,
          required: false,
          controller: _diagnosisCtrl,
          hint: l10n.diagnosisExample,
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.cost, required: false),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _costCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: l10n.example35000,
                prefixText: '₩',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.nextAppointment, required: false),
            const SizedBox(height: AppSpacing.space2),
            if (_nextVisit == null)
              GestureDetector(
                onTap: () => setState(() => _nextVisit = DateTime.now()),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    color: AppColors.primary50,
                    borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                  ),
                  child: Text(l10n.addNextAppointment,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary600,
                      )),
                ),
              )
            else
              Row(
                children: [
                  Expanded(
                    child: FormDateTimePicker(
                      value: _nextVisit!,
                      onChanged: (dt) => setState(() => _nextVisit = dt),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  GestureDetector(
                    onTap: () => setState(() => _nextVisit = null),
                    child: Text(l10n.delete,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.danger400,
                        )),
                  ),
                ],
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
