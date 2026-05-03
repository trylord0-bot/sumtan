import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';

class VaccinationForm extends ConsumerStatefulWidget {
  const VaccinationForm({super.key});

  @override
  ConsumerState<VaccinationForm> createState() => _VaccinationFormState();
}

class _VaccinationFormState extends ConsumerState<VaccinationForm> {
  DateTime _datetime = DateTime.now();
  List<String> _vaccines = [];
  final _hospitalNameCtrl = TextEditingController();
  DateTime? _nextDate;
  String _sideEffect = '없음';
  final _memoCtrl = TextEditingController();

  static const _vaccineOptions = [
    '종합백신(DHPPL)', '코로나', '켄넬코프', '광견병', '인플루엔자', '심장사상충', '기타',
  ];

  @override
  void dispose() {
    _hospitalNameCtrl.dispose();
    _memoCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_vaccines.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('백신 종류를 1개 이상 선택해 주세요'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.gray700,
      ));
      return;
    }
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final data = <String, dynamic>{
      'vaccines': _vaccines,
      'hospital_name': _hospitalNameCtrl.text.isEmpty ? null : _hospitalNameCtrl.text,
      'side_effect': _sideEffect,
    };
    if (_nextDate != null) data['next_date'] = du.toIso8601(_nextDate!);

    final record = Record(
      petId: pet!.id!,
      category: 'vaccination',
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
    if (mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '💉 접종 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormTagSelector(
          label: '백신 종류',
          options: _vaccineOptions,
          selected: _vaccines,
          onChanged: (v) => setState(() => _vaccines = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormInputField(
          label: '병원명',
          controller: _hospitalNameCtrl,
          hint: '예: 행복동물병원',
        ),
        const SizedBox(height: AppSpacing.space4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('다음 접종일', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray700,
            )),
            const SizedBox(height: AppSpacing.space2),
            if (_nextDate == null)
              GestureDetector(
                onTap: () => setState(() => _nextDate = DateTime.now()),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                  decoration: BoxDecoration(
                    color: AppColors.primary50,
                    borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                  ),
                  child: const Text('+ 다음 접종일 추가', style: TextStyle(
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
                      value: _nextDate!,
                      onChanged: (dt) => setState(() => _nextDate = dt),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  GestureDetector(
                    onTap: () => setState(() => _nextDate = null),
                    child: const Text('삭제', style: TextStyle(
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
        FormSegmentRow(
          label: '부작용',
          options: const ['없음', '경미', '심각'],
          selected: _sideEffect,
          onChanged: (v) => setState(() => _sideEffect = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
      ],
    );
  }
}
