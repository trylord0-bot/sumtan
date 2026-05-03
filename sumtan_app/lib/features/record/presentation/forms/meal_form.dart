import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';

class MealForm extends ConsumerStatefulWidget {
  const MealForm({super.key});

  @override
  ConsumerState<MealForm> createState() => _MealFormState();
}

class _MealFormState extends ConsumerState<MealForm> {
  DateTime _datetime = DateTime.now();
  String _mealType = '아침';
  final _foodNameCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  String _intake = '다 먹음';
  String _water = '마심';
  final _memoCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadLastValues();
  }

  Future<void> _loadLastValues() async {
    final prefs = await SharedPreferences.getInstance();
    final lastName = prefs.getString('meal_last_food_name') ?? '';
    final lastAmount = prefs.getString('meal_last_amount_g') ?? '';
    if (mounted) {
      setState(() {
        _foodNameCtrl.text = lastName;
        _amountCtrl.text = lastAmount;
      });
    }
  }

  @override
  void dispose() {
    _foodNameCtrl.dispose();
    _amountCtrl.dispose();
    _memoCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_foodNameCtrl.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('사료명을 입력해 주세요'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.gray700,
      ));
      return;
    }
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('meal_last_food_name', _foodNameCtrl.text);
    await prefs.setString('meal_last_amount_g', _amountCtrl.text);

    final record = Record(
      petId: pet!.id!,
      category: 'meal',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'meal_type': _mealType,
        'food_name': _foodNameCtrl.text.isEmpty ? null : _foodNameCtrl.text,
        'amount_g': _amountCtrl.text.isEmpty ? null : _amountCtrl.text,
        'intake': _intake,
        'water': _water,
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
    if (mounted) Navigator.pop(context, true);
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
        FormInputField(
          label: '사료명',
          controller: _foodNameCtrl,
          hint: '예: 로얄캐닌 어덜트',
        ),
        const SizedBox(height: AppSpacing.space3),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('급여량', style: TextStyle(
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
        FormSegmentRow(
          label: '음수 여부',
          options: const ['마심', '안 마심'],
          selected: _water,
          onChanged: (v) => setState(() => _water = v),
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
      ],
    );
  }
}
