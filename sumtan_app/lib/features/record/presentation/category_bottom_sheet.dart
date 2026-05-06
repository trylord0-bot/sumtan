import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../shared/constants/category_constants.dart';
import 'forms/poop_form.dart';
import 'forms/condition_form.dart';
import 'forms/medication_form.dart';
import 'forms/weight_form.dart';
import 'forms/meal_form.dart';
import 'forms/hospital_form.dart';
import 'forms/vaccination_form.dart';
import 'forms/grooming_form.dart';
import 'forms/memo_form.dart';

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

    // Core categories with dedicated forms
    switch (category) {
      case RecordCategory.poop:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const PoopForm(),
        );
        return;
      case RecordCategory.condition:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const ConditionForm(),
        );
        return;
      case RecordCategory.medication:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const MedicationForm(),
        );
        return;
      case RecordCategory.weight:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const WeightForm(),
        );
        return;
      case RecordCategory.meal:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const MealForm(),
        );
        return;
      case RecordCategory.hospital:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const HospitalForm(),
        );
        return;
      case RecordCategory.vaccination:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const VaccinationForm(),
        );
        return;
      case RecordCategory.grooming:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const GroomingForm(),
        );
        return;
      case RecordCategory.memo:
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          builder: (_) => const MemoForm(),
        );
        return;
    }
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
            // Handle bar
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(9999),
              ),
            ),
            Row(
              children: [
                const Text(
                  '📝 무엇을 기록할까요?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray900,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close, color: AppColors.gray500),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.space3),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: AppSpacing.space3,
              mainAxisSpacing: AppSpacing.space3,
              childAspectRatio: 1.1,
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
    final bg = category.bgColor;
    final accent = category.color;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: accent.withValues(alpha: 0.35), width: 1.2),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.space4,
          horizontal: AppSpacing.space2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(category.emoji, style: const TextStyle(fontSize: 22)),
            ),
            const SizedBox(height: 6),
            Text(
              category.label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: accent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
