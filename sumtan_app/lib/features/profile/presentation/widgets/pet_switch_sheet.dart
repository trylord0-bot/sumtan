import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../pet/data/pet_model.dart';
import '../../../pet/provider/pet_provider.dart';

void showPetSwitchSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => const _PetSwitchSheet(),
  );
}

class _PetSwitchSheet extends ConsumerWidget {
  const _PetSwitchSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsAsync = ref.watch(petsProvider);
    final selectedIndex = ref.watch(selectedPetIndexProvider);

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40, height: 4,
            decoration: BoxDecoration(
              color: AppColors.gray300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 16, 20, 12),
            child: Text('반려동물 전환',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray900)),
          ),
          petsAsync.when(
            loading: () => const Padding(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(),
            ),
            error: (_, __) => const SizedBox.shrink(),
            data: (pets) => Column(
              children: pets.asMap().entries.map((e) {
                final idx = e.key;
                final pet = e.value;
                final isSelected = idx == selectedIndex;
                return _PetTile(
                  pet: pet,
                  isSelected: isSelected,
                  onTap: () {
                    ref.read(selectedPetIndexProvider.notifier).state = idx;
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}

class _PetTile extends StatelessWidget {
  final Pet pet;
  final bool isSelected;
  final VoidCallback onTap;

  const _PetTile({
    required this.pet,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected ? AppColors.primary50 : null,
        padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.space5, vertical: AppSpacing.space3),
        child: Row(
          children: [
            Container(
              width: 40, height: 40,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary100 : AppColors.gray100,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(pet.speciesEmoji,
                  style: const TextStyle(fontSize: 22)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pet.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: isSelected
                            ? AppColors.primary700
                            : AppColors.gray900,
                      )),
                  if (pet.breed != null)
                    Text(pet.breed!,
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.gray500)),
                ],
              ),
            ),
            if (isSelected)
              const Icon(Icons.check_circle_rounded,
                  color: AppColors.primary400, size: 22),
          ],
        ),
      ),
    );
  }
}
