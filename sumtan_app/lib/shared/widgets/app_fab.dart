import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';

class AppFab extends StatelessWidget {
  final VoidCallback onPressed;

  const AppFab({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.primary400,
      foregroundColor: AppColors.white,
      shape: const CircleBorder(
        side: BorderSide(color: AppColors.white, width: 2.5),
      ),
      elevation: 4,
      child: const Icon(Icons.add, size: 28),
    );
  }
}
