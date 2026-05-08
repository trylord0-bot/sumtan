import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../pet/data/pet_model.dart';
import '../../../pet/provider/pet_provider.dart';
import 'pet_add_payment.dart';

void showPetSwitchSheet(BuildContext context, WidgetRef parentRef) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => _PetSwitchSheet(
      parentContext: context,
      parentRef: parentRef,
    ),
  );
}

class _PetSwitchSheet extends ConsumerWidget {
  final BuildContext parentContext;
  final WidgetRef parentRef;

  const _PetSwitchSheet({
    required this.parentContext,
    required this.parentRef,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petsAsync = ref.watch(petsProvider);
    final selectedId = ref.watch(selectedPetIdProvider);
    final pets = petsAsync.valueOrNull ?? [];
    final effectiveId = selectedId ?? (pets.isNotEmpty ? pets.first.id : null);

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 핸들
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.gray300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          // 헤더
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 8, 10),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    '반려동물 선택',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.gray900,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close,
                      color: AppColors.gray500, size: 20),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          // 반려동물 목록
          petsAsync.when(
            loading: () => const Padding(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(),
            ),
            error: (_, __) => const SizedBox.shrink(),
            data: (pets) => Column(
              children: pets.map((pet) {
                final isSelected = pet.id == effectiveId;
                return _PetTile(
                  pet: pet,
                  isSelected: isSelected,
                  onTap: () {
                    ref.read(selectedPetIdProvider.notifier).state = pet.id;
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 8),
          // 새 반려동물 추가 버튼
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: _DashedAddButton(
              onTap: () async {
                Navigator.pop(context);
                await openPaidAddPetScreen(parentContext, parentRef);
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 8),
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
    final parts = <String>[
      if (pet.breed != null) pet.breed!,
      if (pet.gender == 'male') '수컷' else if (pet.gender == 'female') '암컷',
      if (pet.ageLabel != '미입력') pet.ageLabel,
    ];

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary50 : AppColors.gray50,
          borderRadius: BorderRadius.circular(AppRadius.radiusMd),
          border: Border.all(
            color: isSelected ? AppColors.primary400 : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary100 : AppColors.gray200,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child:
                  Text(pet.speciesEmoji, style: const TextStyle(fontSize: 22)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color:
                          isSelected ? AppColors.primary700 : AppColors.gray900,
                    ),
                  ),
                  if (parts.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      parts.join(' · '),
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.gray500),
                    ),
                  ],
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

class _DashedAddButton extends StatelessWidget {
  final VoidCallback onTap;
  const _DashedAddButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: const _DashedPainter(color: AppColors.primary300),
        child: Container(
          width: double.infinity,
          height: 48,
          alignment: Alignment.center,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, color: AppColors.primary600, size: 18),
              SizedBox(width: 6),
              Text(
                '새 반려동물 추가하기',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashedPainter extends CustomPainter {
  final Color color;
  const _DashedPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    const sw = 1.5;
    const dw = 6.0;
    const ds = 4.0;
    const r = 10.0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = sw
      ..style = PaintingStyle.stroke;
    final path = Path()
      ..addRRect(RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(r),
      ));
    final dashPath = Path();
    for (final metric in path.computeMetrics()) {
      double d = 0;
      while (d < metric.length) {
        dashPath.addPath(metric.extractPath(d, math.min(d + dw, metric.length)),
            Offset.zero);
        d += dw + ds;
      }
    }
    canvas.drawPath(dashPath, paint);
  }

  @override
  bool shouldRepaint(_DashedPainter o) => o.color != color;
}
