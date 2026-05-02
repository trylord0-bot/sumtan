import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../features/pet/data/pet_model.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../features/pet/presentation/pet_register_screen.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsAsync = ref.watch(petsProvider);

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.space4),
        children: [
          // 반려동물 관리 섹션
          const _SectionHeader(title: '반려동물 관리'),
          const SizedBox(height: AppSpacing.space2),
          petsAsync.when(
            data: (pets) => Column(
              children: [
                ...pets.map((p) => _PetListItem(
                  pet: p,
                  onEdit: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PetRegisterScreen(editPet: p),
                      ),
                    );
                    ref.invalidate(petsProvider);
                  },
                  onDelete: () => _confirmDelete(context, ref, p),
                )),
                const SizedBox(height: AppSpacing.space2),
                _AddPetButton(onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetRegisterScreen(),
                    ),
                  );
                  ref.invalidate(petsProvider);
                }),
              ],
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (_, __) => const Text('오류가 발생했어요'),
          ),

          const SizedBox(height: AppSpacing.space6),

          const _SectionHeader(title: '앱 정보'),
          const SizedBox(height: AppSpacing.space2),
          const _InfoTile(label: '앱 버전', value: '1.0.0'),
          const _InfoTile(label: '데이터 저장', value: '이 기기에만 저장됩니다'),

          const SizedBox(height: AppSpacing.space6),

          const _SectionHeader(title: '예정 기능'),
          const SizedBox(height: AppSpacing.space2),
          const _DisabledTile(label: '데이터 백업 / 복원'),
          const _DisabledTile(label: '클라우드 동기화'),
          const _DisabledTile(label: '데이터 내보내기 (JSON/PDF)'),
          const _DisabledTile(label: '알림 설정'),
          // TODO: 2차 마일스톤 — 위 기능들 구현 예정
        ],
      ),
    );
  }

  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    Pet pet,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text('반려동물 삭제'),
        content: Text('${pet.name}의 모든 기록이 함께 삭제됩니다.\n정말 삭제할까요?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('취소', style: TextStyle(color: AppColors.gray500)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('삭제', style: TextStyle(color: AppColors.danger400)),
          ),
        ],
      ),
    );
    if (confirmed == true && pet.id != null) {
      ref.read(petsProvider.notifier).remove(pet.id!);
    }
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w700,
      color: AppColors.gray500, letterSpacing: 0.3,
    ));
  }
}

class _PetListItem extends StatelessWidget {
  final Pet pet;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _PetListItem({
    required this.pet,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final age = pet.ageYears;
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space2),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4, vertical: AppSpacing.space3,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Row(
        children: [
          Container(
            width: 44, height: 44,
            decoration: BoxDecoration(
              color: AppColors.primary50,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary100),
            ),
            alignment: Alignment.center,
            child: Text(pet.speciesEmoji, style: const TextStyle(fontSize: 22)),
          ),
          const SizedBox(width: AppSpacing.space3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pet.name, style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w700,
                  color: AppColors.gray900,
                )),
                const SizedBox(height: 2),
                Text(
                  [
                    if (pet.breed != null) pet.breed!,
                    if (age != null) '$age살',
                    if (pet.isNeutered) '중성화',
                  ].join(' · '),
                  style: const TextStyle(fontSize: 12, color: AppColors.gray500),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit_outlined, size: 20, color: AppColors.primary600),
            onPressed: onEdit,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, size: 20, color: AppColors.danger400),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}

class _AddPetButton extends StatelessWidget {
  final VoidCallback onTap;
  const _AddPetButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.space3),
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary200, width: 1.5),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: AppColors.primary600, size: 20),
            SizedBox(width: AppSpacing.space2),
            Text('반려동물 추가', style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600,
              color: AppColors.primary600,
            )),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;
  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space2),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4, vertical: AppSpacing.space3,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 14, color: AppColors.gray700)),
          const Spacer(),
          Text(value, style: const TextStyle(fontSize: 13, color: AppColors.gray400)),
        ],
      ),
    );
  }
}

class _DisabledTile extends StatelessWidget {
  final String label;
  const _DisabledTile({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.space2),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4, vertical: AppSpacing.space3,
      ),
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontSize: 14, color: AppColors.gray400)),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: AppColors.gray200,
              borderRadius: BorderRadius.circular(9999),
            ),
            child: const Text('준비 중', style: TextStyle(
              fontSize: 11, color: AppColors.gray500,
            )),
          ),
        ],
      ),
    );
  }
}
