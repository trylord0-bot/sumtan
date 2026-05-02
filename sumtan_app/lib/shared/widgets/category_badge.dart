import 'package:flutter/material.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_spacing.dart';
import '../constants/category_constants.dart';

class CategoryBadge extends StatelessWidget {
  final RecordCategory category;
  final bool compact;

  const CategoryBadge({super.key, required this.category, this.compact = false});

  @override
  Widget build(BuildContext context) {
    final color = category.color;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? AppSpacing.space2 : AppSpacing.space3,
        vertical: AppSpacing.space1,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(AppRadius.radiusFull),
        border: Border.all(color: color, width: 1.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 6, height: 6,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 4),
          Text(
            category.label,
            style: TextStyle(
              fontSize: compact ? 11 : 13,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final RecordCategory category;
  final double size;

  const CategoryIcon({super.key, required this.category, this.size = 36});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size, height: size,
      decoration: BoxDecoration(
        color: category.bgColor,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      alignment: Alignment.center,
      child: Text(category.emoji, style: TextStyle(fontSize: size * 0.5)),
    );
  }
}

class RecordListItem extends StatelessWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final String time;
  final Color barColor;
  final Color iconBg;
  final VoidCallback? onTap;

  const RecordListItem({
    super.key,
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.barColor,
    required this.iconBg,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppRadius.radiusLg),
          border: Border.all(color: AppColors.gray200, width: 1),
        ),
        child: Row(
          children: [
            // 좌측 카테고리 컬러 바 (4dp)
            Container(
              width: 4,
              height: double.infinity,
              decoration: BoxDecoration(
                color: barColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppRadius.radiusLg),
                  bottomLeft: Radius.circular(AppRadius.radiusLg),
                ),
              ),
            ),
            const SizedBox(width: AppSpacing.space3),
            // 아이콘
            Container(
              width: 36, height: 36,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(AppRadius.radiusMd),
              ),
              alignment: Alignment.center,
              child: Text(emoji, style: const TextStyle(fontSize: 18)),
            ),
            const SizedBox(width: AppSpacing.space3),
            // 본문
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  )),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 13, color: AppColors.gray600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // 시간
            Padding(
              padding: const EdgeInsets.only(right: AppSpacing.space3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(time, style: const TextStyle(
                    fontSize: 12, color: AppColors.gray400,
                  )),
                  const SizedBox(height: 2),
                  const Icon(Icons.chevron_right, color: AppColors.gray300, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
