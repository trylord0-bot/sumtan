import 'package:flutter/material.dart';

import '../localization/app_localizations.dart';
import '../theme/app_colors.dart';

class AppPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final PreferredSizeWidget? bottom;

  const AppPageAppBar({
    super.key,
    required this.title,
    this.bottom,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(56 + (bottom?.preferredSize.height ?? 1));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.navBg,
      foregroundColor: AppColors.gray900,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.gray700, size: 22),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        context.lt(title),
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w800,
          color: AppColors.gray900,
        ),
      ),
      bottom: bottom ??
          const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: Divider(height: 1, color: AppColors.gray100),
          ),
    );
  }
}
