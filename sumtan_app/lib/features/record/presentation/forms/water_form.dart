import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/widgets/app_toast.dart';
import '../../../../core/utils/date_utils.dart' as du;
import '../../data/record_model.dart';
import '../../provider/record_provider.dart';
import '../../../../features/pet/provider/pet_provider.dart';
import 'form_widgets.dart';

class WaterForm extends ConsumerStatefulWidget {
  const WaterForm({super.key});

  @override
  ConsumerState<WaterForm> createState() => _WaterFormState();
}

class _WaterFormState extends ConsumerState<WaterForm> {
  DateTime _datetime = DateTime.now();
  String _waterAmount = 'normal';
  final _mlCtrl = TextEditingController();
  final _memoCtrl = TextEditingController();

  static const _amounts = [
    ('very_little', '매우 적음', '💧'),
    ('little',      '적음',     '💧💧'),
    ('normal',      '보통',     '💧💧💧'),
    ('much',        '많음',     '💧💧💧💧'),
    ('very_much',   '매우 많음', '💧💧💧💧💧'),
  ];

  @override
  void dispose() {
    _mlCtrl.dispose();
    _memoCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final pet = ref.read(selectedPetProvider);
    if (pet?.id == null) return;

    final ml = _mlCtrl.text.isNotEmpty ? int.tryParse(_mlCtrl.text) : null;

    final record = Record(
      petId: pet!.id!,
      category: 'water',
      recordedAt: du.toIso8601(_datetime),
      dataJson: {
        'water_amount': _waterAmount,
        if (ml != null) 'milliliter': ml,
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
      showTopToast(context, '💧 음수가 기록됐어요');
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormShell(
      title: '💧 음수 기록',
      onSave: _save,
      children: [
        FormDateTimePicker(
          value: _datetime,
          onChanged: (dt) => setState(() => _datetime = dt),
        ),
        const SizedBox(height: AppSpacing.space4),

        // 음수량 단계 선택
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('음수량', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray700,
            )),
            const SizedBox(height: AppSpacing.space3),
            Row(
              children: _amounts.map((entry) {
                final (val, label, dots) = entry;
                final isSelected = _waterAmount == val;
                return Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _waterAmount = val),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.cyan50 : AppColors.gray50,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isSelected ? AppColors.categoryWater : AppColors.gray200,
                          width: isSelected ? 1.5 : 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(dots, style: const TextStyle(fontSize: 10)),
                          const SizedBox(height: 4),
                          Text(
                            label,
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                              color: isSelected ? AppColors.categoryWater : AppColors.gray500,
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

        // mL 직접 입력 (선택)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('mL 직접 입력 (선택)', style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray700,
            )),
            const SizedBox(height: AppSpacing.space2),
            TextFormField(
              controller: _mlCtrl,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                _RangeLimitFormatter(max: 9999),
              ],
              decoration: const InputDecoration(
                hintText: '직접 입력 (선택)',
                suffixText: 'mL',
              ),
              style: const TextStyle(fontSize: 16, color: AppColors.gray900),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space4),
        FormMemoField(controller: _memoCtrl),
      ],
    );
  }
}

class _RangeLimitFormatter extends TextInputFormatter {
  final int max;
  const _RangeLimitFormatter({required this.max});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;
    final val = int.tryParse(newValue.text);
    if (val == null || val > max) return oldValue;
    return newValue;
  }
}
