import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../shared/constants/category_constants.dart';
import 'forms/poop_form.dart';
import 'forms/condition_form.dart';
import 'forms/medication_form.dart';
import 'forms/weight_form.dart';

Future<void> showCategoryBottomSheet(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => const _CategorySheet(),
  );
}

class _CategorySheet extends StatelessWidget {
  const _CategorySheet();

  void _openForm(BuildContext context, RecordCategory category) {
    Navigator.pop(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) {
        switch (category) {
          case RecordCategory.poop:      return const PoopForm();
          case RecordCategory.condition: return const ConditionForm();
          case RecordCategory.medication:return const MedicationForm();
          case RecordCategory.weight:    return const WeightForm();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.space5, 0, AppSpacing.space5, AppSpacing.space5,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 핸들 바
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 40, height: 4,
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(9999),
              ),
            ),
            Row(
              children: [
                const Text('📝 무엇을 기록할까요?', style: TextStyle(
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
            const SizedBox(height: AppSpacing.space3),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: AppSpacing.space3,
              mainAxisSpacing: AppSpacing.space3,
              childAspectRatio: 2.0,
              children: RecordCategory.values.map((cat) {
                return _CategoryButton(
                  category: cat,
                  onTap: () => _openForm(context, cat),
                );
              }).toList(),
            ),
            const SizedBox(height: AppSpacing.space2),
          ],
        ),
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final RecordCategory category;
  final VoidCallback onTap;

  const _CategoryButton({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary100, width: 1.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(category.emoji, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: AppSpacing.space2),
            Text(category.label, style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600,
              color: AppColors.primary900,
            )),
          ],
        ),
      ),
    );
  }
}
