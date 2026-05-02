import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? petChip;
  final List<Widget>? actions;

  const AppHeader({
    super.key,
    required this.title,
    this.petChip,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: const BoxDecoration(
        color: AppColors.primary50,
        border: Border(
          bottom: BorderSide(color: AppColors.primary100, width: 1.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space5),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.primary900,
              ),
            ),
            const SizedBox(width: AppSpacing.space3),
            if (petChip != null) ...[
              const Spacer(),
              petChip!,
              const SizedBox(width: AppSpacing.space2),
            ] else
              const Spacer(),
            if (actions != null) ...actions!,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class PetChip extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const PetChip({super.key, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.primary100,
          border: Border.all(color: AppColors.primary400, width: 1.5),
          borderRadius: BorderRadius.circular(AppSpacing.space12),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.primary900,
          ),
        ),
      ),
    );
  }
}
