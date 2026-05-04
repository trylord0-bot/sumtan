import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../pet/data/pet_model.dart';
import '../../pet/provider/pet_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsAsync = ref.watch(petsProvider);

    return petsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('오류: $e')),
      data: (pets) {
        if (pets.isEmpty) {
          return _EmptyProfileState(
            onAdd: () => context.push('/pet/register'),
          );
        }
        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
          children: [
            ...pets.map((p) => _PetCard(pet: p)),
            const SizedBox(height: AppSpacing.space4),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton.icon(
                onPressed: () => context.push('/pet/register'),
                icon: const Icon(Icons.add),
                label: const Text('반려동물 추가'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primary600,
                  side: const BorderSide(color: AppColors.primary300),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PetCard extends ConsumerWidget {
  final Pet pet;
  const _PetCard({required this.pet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ageText = pet.ageYears != null ? '${pet.ageYears}살' : '';
    final genderText = pet.gender == 'male' ? '수컷' : pet.gender == 'female' ? '암컷' : '';
    final neuteredText = pet.isNeutered ? ' · 중성화' : '';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.radiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 56, height: 56,
            decoration: const BoxDecoration(
              color: AppColors.primary50,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(pet.speciesEmoji, style: const TextStyle(fontSize: 28)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pet.name,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gray900)),
                const SizedBox(height: 2),
                Text(
                  [
                    if (pet.breed != null) pet.breed!,
                    if (ageText.isNotEmpty) ageText,
                    if (genderText.isNotEmpty) '$genderText$neuteredText',
                  ].join(' · '),
                  style: const TextStyle(fontSize: 13, color: AppColors.gray500),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit_outlined,
                color: AppColors.gray400, size: 20),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProviderScope(
                  child: _EditPetWrapper(pet: pet),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline,
                color: AppColors.danger400, size: 20),
            onPressed: () => _confirmDelete(context, ref),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('삭제할까요?'),
        content: Text('${pet.name}의 모든 정보가 삭제돼요.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('취소'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: AppColors.danger600),
            onPressed: () async {
              Navigator.pop(ctx);
              await ref.read(petsProvider.notifier).remove(pet.id!);
            },
            child: const Text('삭제'),
          ),
        ],
      ),
    );
  }
}

class _EditPetWrapper extends ConsumerWidget {
  final Pet pet;
  const _EditPetWrapper({required this.pet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Import pet register inline to avoid circular deps
    return _buildEditScreen(context, pet);
  }

  Widget _buildEditScreen(BuildContext context, Pet pet) {
    // Navigate to pet edit via router
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pop(context);
      context.push('/pet/register');
    });
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

class _EmptyProfileState extends StatelessWidget {
  final VoidCallback onAdd;
  const _EmptyProfileState({required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.space8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🐾', style: TextStyle(fontSize: 56)),
            const SizedBox(height: AppSpacing.space4),
            const Text('등록된 반려동물이 없어요',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray900)),
            const SizedBox(height: AppSpacing.space2),
            const Text('반려동물을 등록하고\n건강을 함께 관리해봐요!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: AppColors.gray500)),
            const SizedBox(height: AppSpacing.space6),
            ElevatedButton.icon(
              onPressed: onAdd,
              icon: const Icon(Icons.add),
              label: const Text('반려동물 등록하기'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary400,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.space6, vertical: AppSpacing.space3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
