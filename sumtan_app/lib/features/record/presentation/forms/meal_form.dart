import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../app/l10n/l10n_extension.dart';
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
  String _mealAmount = 'normal';
  final _amountCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();
  final _mediaController = RecordMediaController();

  static const _mealAmounts = [
    ('very_little', '매우 적음', '🍚'),
    ('little', '적음', '🍚🍚'),
    ('normal', '보통', '🍚🍚🍚'),
    ('much', '많음', '🍚🍚🍚🍚'),
    ('very_much', '매우 많음', '🍚🍚🍚🍚🍚'),
  ];

  static const _mealAccent = Color(0xFF2DD4BF);
  static const _mealBg = Color(0xFFF0FDFA);

  @override
  void initState() {
    super.initState();
    _loadLastValues();
  }

  Future<void> _loadLastValues() async {
    final prefs = await SharedPreferences.getInstance();
    final lastAmount = prefs.getString('meal_last_amount_g') ?? '';
    if (mounted) {
      setState(() {
        _amountCtrl.text = lastAmount;
      });
    }
  }

  @override
  void dispose() {
    _amountCtrl.dispose();
    _memoCtrl.dispose();
    _mediaController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final prefs = await SharedPreferences.getInstance();
    if (_amountCtrl.text.isNotEmpty) {
      await prefs.setString('meal_last_amount_g', _amountCtrl.text);
    }
    if (!mounted) return;
    final media = await _mediaController.saveToLocalFilesWithProgress(context);

    final record = Record(
      petId: pet!.id!,
      category: 'meal',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'meal_amount': _mealAmount,
        if (_amountCtrl.text.isNotEmpty) 'amount_g': _amountCtrl.text,
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
    ref.invalidate(weeklyMealStatsProvider);
    ref.invalidate(lastRecordProvider);
    if (mounted) {
      showTopToast(context, context.l10n.mealRecordSaved);
      Navigator.pop(context, true);
    }
  }

  String _localizeAmount(BuildContext context, String val) {
    final l10n = context.l10n;
    return switch (val) {
      'very_little' => l10n.veryLittle,
      'little' => l10n.little,
      'normal' => l10n.normal,
      'much' => l10n.much,
      'very_much' => l10n.veryMuch,
      _ => val,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormShell(
      title: l10n.mealFormTitle,
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),

        // 식사량 5단계 선택
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.mealAmount, required: false),
            const SizedBox(height: AppSpacing.space3),
            Row(
              children: _mealAmounts.map((entry) {
                final (val, _, bowls) = entry;
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
                            _localizeAmount(context, val),
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color:
                                  isSelected ? _mealAccent : AppColors.gray500,
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

        // 급여량
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormFieldLabel(l10n.feedAmount, required: false),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _amountCtrl,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                    RegExp(r'^\d+([.,]\d{0,1})?')),
              ],
              decoration: InputDecoration(
                hintText: l10n.example80,
                suffixText: 'g',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
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
