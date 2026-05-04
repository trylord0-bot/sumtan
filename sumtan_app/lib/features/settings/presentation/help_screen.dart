import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.primary50,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text('🐾', style: TextStyle(fontSize: 40)),
              ),
              const SizedBox(height: 16),
              const Text(
                '도움말을 준비 중이에요',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                '반려숨탄을 더 잘 활용할 수 있도록\n사용 가이드를 준비하고 있어요.\n조금만 기다려 주세요! 🙏',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.gray500,
                  height: 1.65,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.primary50,
                  border: Border.all(color: AppColors.primary200),
                  borderRadius: BorderRadius.circular(9999),
                ),
                child: const Text(
                  '✨ 곧 업데이트 예정',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
