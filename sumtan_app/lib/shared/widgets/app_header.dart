import 'package:flutter/material.dart';
import '../../app/localization/app_localizations.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? petChip;
  final List<Widget>? actions;
  final bool hamburger;

  const AppHeader({
    super.key,
    required this.title,
    this.petChip,
    this.actions,
    this.hamburger = false,
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Left: title + optional non-hamburger actions
            Row(
              children: [
                Text(
                  context.lt(title),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary900,
                  ),
                ),
                const Spacer(),
                if (!hamburger && actions != null) ...actions!,
                if (hamburger)
                  Builder(
                    builder: (ctx) => IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: AppColors.primary900,
                        size: 24,
                      ),
                      onPressed: () => Scaffold.of(ctx).openEndDrawer(),
                      tooltip: context.lt('메뉴'),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 36,
                        minHeight: 36,
                      ),
                    ),
                  ),
              ],
            ),
            // Center: pet chip (truly centered via Stack)
            if (petChip != null)
              IgnorePointer(
                ignoring: false,
                child: Center(child: petChip!),
              ),
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
