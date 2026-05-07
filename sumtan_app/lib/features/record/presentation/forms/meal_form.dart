import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';
import 'media_attachment_field.dart';

class MealForm extends ConsumerStatefulWidget {
  const MealForm({super.key});

  @override
  ConsumerState<MealForm> createState() => _MealFormState();
}

class _MealFormState extends ConsumerState<MealForm> {
  DateTime _datetime = DateTime.now();
  String _mealType = '아침';
  String _mealAmount = 'normal';
  final _foodNameCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  String _intake = '다 먹음';
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _mealAmounts = [
    ('very_little', '매우 적음', '🍚'),
    ('little',      '적음',     '🍚🍚'),
    ('normal',      '보통',     '🍚🍚🍚'),
    ('much',        '많음',     '🍚🍚🍚🍚'),
    ('very_much',   '매우 많음', '🍚🍚🍚🍚🍚'),
  ];

  static const _mealAccent = Color(0xFF2DD4BF);
  static const _mealBg     = Color(0xFFF0FDFA);

  @override
  void initState() {
    super.initState();
    _loadLastValues();
  }

  Future<void> _loadLastValues() async {
    final prefs = await SharedPreferences.getInstance();
    final lastName   = prefs.getString('meal_last_food_name') ?? '';
    final lastAmount = prefs.getString('meal_last_amount_g') ?? '';
    if (mounted) {
      setState(() {
        _foodNameCtrl.text = lastName;
        _amountCtrl.text   = lastAmount;
      });
    }
  }

  @override
  void dispose() {
    _foodNameCtrl.dispose();
    _amountCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final prefs = await SharedPreferences.getInstance();
    if (_foodNameCtrl.text.isNotEmpty) {
      await prefs.setString('meal_last_food_name', _foodNameCtrl.text);
    }
    if (_amountCtrl.text.isNotEmpty) {
      await prefs.setString('meal_last_amount_g', _amountCtrl.text);
    }
    final media = await _mediaController.saveToLocalFiles();

    final record = Record(
      petId: pet!.id!,
      category: 'meal',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'meal_type':   _mealType,
        'meal_amount': _mealAmount,
        if (_foodNameCtrl.text.isNotEmpty) 'food_name': _foodNameCtrl.text,
        if (_amountCtrl.text.isNotEmpty)   'amount_g':  _amountCtrl.text,
        'intake': _intake,
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
      showTopToast(context, '🍽️ 식사가 기록됐어요');
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '🍽️ 식사 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),

        FormSegmentRow(
          label: '식사 타입',
          options: const ['아침', '점심', '저녁', '간식'],
          selected: _mealType,
          onChanged: (v) => setState(() => _mealType = v),
        ),
        const SizedBox(height: AppSpacing.space4),

        // 식사량 5단계 선택
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('식사량', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray700,
            )),
            const SizedBox(height: AppSpacing.space3),
            Row(
              children: _mealAmounts.map((entry) {
                final (val, label, bowls) = entry;
                final isSelected = _mealAmount == val;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _mealAmount = val),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? _mealBg : AppColors.gray50,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected ? _mealAccent : AppColors.gray200,
                          width: isSelected ? 1.5 : 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(bowls, style: const TextStyle(fontSize: 10)),
                          const SizedBox(height: 4),
                          Text(
                            label,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: isSelected ? _mealAccent : AppColors.gray500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),

        FormInputField(
          label: '사료명 (선택)',
          controller: _foodNameCtrl,
          hint: '예: 로얄캐닌 어덜트',
        ),
        const SizedBox(height: AppSpacing.space3),

        // 급여량 (선택)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('급여량 (선택)', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray700,
            )),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _amountCtrl,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,1}')),
              ],
              decoration: const InputDecoration(
                hintText: '예: 80',
                suffixText: 'g',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),

        FormSegmentRow(
          label: '섭취 상태',
          options: const ['다 먹음', '절반', '거의 안 먹음'],
          selected: _intake,
          onChanged: (v) => setState(() => _intake = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
        const SizedBox(height: AppSpacing.space4),
        RecordMediaAttachmentField(controller: _mediaController),
      ],
    );
  }
}
