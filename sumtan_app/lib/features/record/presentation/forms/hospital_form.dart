import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/localization/app_localizations.dart';
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
    final media = await _mediaController.saveToLocalFiles();
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
      showTopToast(context, context.lt('🏥 병원 방문이 기록됐어요'));
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '🏥 병원 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '병원명',
          required: false,
          controller: _hospitalNameCtrl,
          hint: '예: 행복동물병원',
        ),
        const SizedBox(height: AppSpacing.space4),
        FormSegmentRow(
          label: '진료 유형',
          options: const ['일반', '정기검진', '응급'],
          selected: _visitType,
          onChanged: (v) => setState(() => _visitType = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: '증상 태그',
          required: false,
          options: _symptomOptions,
          selected: _symptoms,
          onChanged: (v) => setState(() => _symptoms = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '진단명',
          required: false,
          controller: _diagnosisCtrl,
          hint: '예: 장염, 피부염',
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FormFieldLabel('비용', required: false),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _costCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: context.lt('예: 35000'),
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
            const FormFieldLabel('다음 예약일', required: false),
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
                  child: Text(context.lt('+ 다음 예약일 추가'),
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
                    child: Text(context.lt('삭제'),
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
