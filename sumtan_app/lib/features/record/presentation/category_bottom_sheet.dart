import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../shared/constants/category_constants.dart';
import 'forms/poop_form.dart';
import 'forms/condition_form.dart';
import 'forms/medication_form.dart';
import 'forms/weight_form.dart';
import 'forms/meal_form.dart';
import 'forms/hospital_form.dart';
import 'forms/vaccination_form.dart';
import 'forms/grooming_form.dart';
import 'forms/walk_form.dart';
import 'forms/memo_form.dart';

Future<void> showCategoryBottomSheet(BuildContext context) async {
  await showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => const _CategorySheet(),
  );
}

// Each grid item: category + optional display overrides for species-specific labeling
class _CategoryEntry {
  final RecordCategory category;
  final String? displayLabel;
  final String? displayEmoji;

  const _CategoryEntry(this.category, {this.displayLabel, this.displayEmoji});
}

class _CategorySheet extends ConsumerWidget {
  const _CategorySheet();

  List<_CategoryEntry> _buildEntries(String? species) {
    const base = [
      RecordCategory.poop,
      RecordCategory.condition,
      RecordCategory.medication,
      RecordCategory.weight,
      RecordCategory.meal,
      RecordCategory.hospital,
      RecordCategory.vaccination,
    ];

    final _CategoryEntry speciesEntry;
    if (species == 'dog') {
      speciesEntry = const _CategoryEntry(RecordCategory.walk);
    } else if (species == 'cat') {
      speciesEntry = const _CategoryEntry(
        RecordCategory.grooming,
        displayLabel: '빗질',
        displayEmoji: '🪮',
      );
    } else {
      speciesEntry = const _CategoryEntry(RecordCategory.grooming);
    }

    return [
      ...base.map((c) => _CategoryEntry(c)),
      speciesEntry,
      const _CategoryEntry(RecordCategory.memo),
    ];
  }

  void _openForm(BuildContext context, RecordCategory category) {
    Navigator.pop(context);

    Widget? form;
    switch (category) {
      case RecordCategory.poop:
        form = const PoopForm();
      case RecordCategory.condition:
        form = const ConditionForm();
      case RecordCategory.medication:
        form = const MedicationForm();
      case RecordCategory.weight:
        form = const WeightForm();
      case RecordCategory.meal:
        form = const MealForm();
      case RecordCategory.hospital:
        form = const HospitalForm();
      case RecordCategory.vaccination:
        form = const VaccinationForm();
      case RecordCategory.grooming:
        form = const GroomingForm();
      case RecordCategory.walk:
        form = const WalkForm();
      case RecordCategory.memo:
        form = const MemoForm();
    }

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => form!,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = ref.watch(selectedPetProvider);
    final entries = _buildEntries(pet?.species);

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
              children: entries.map((entry) {
                return _CategoryButton(
                  entry: entry,
                  onTap: () => _openForm(context, entry.category),
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
  final _CategoryEntry entry;
  final VoidCallback onTap;

  const _CategoryButton({required this.entry, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bg     = entry.category.bgColor;
    final accent = entry.category.color;
    final emoji  = entry.displayEmoji ?? entry.category.emoji;
    final label  = entry.displayLabel ?? entry.category.label;

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
              child: Text(emoji, style: const TextStyle(fontSize: 22)),
            ),
            const SizedBox(height: 6),
            Text(
              label,
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
