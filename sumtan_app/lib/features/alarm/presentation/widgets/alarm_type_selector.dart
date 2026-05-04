import 'package:flutter/material.dart';
import '../../../../app/theme/app_colors.dart';
import 'alarm_form_sheet.dart';

class AlarmTypeSelector extends StatelessWidget {
  /// Outer context captured before this sheet was opened.
  /// Used to show the form sheet after this one closes.
  final BuildContext outerContext;

  const AlarmTypeSelector({super.key, required this.outerContext});

  static const _types = [
    ('vaccination', '💉', '예방접종'),
    ('hospital',    '🏥', '병원 예약'),
    ('medication',  '💊', '투약'),
    ('meal',        '🍽️', '식사 시간'),
    ('daily',       '📋', '일일 리마인더'),
  ];

  @override
  Widget build(BuildContext context) {
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
            child: Text('알림 종류 선택', style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700,
              color: AppColors.gray900,
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.1,
              children: _types.map((t) => _TypeCard(
                type: t.$1,
                emoji: t.$2,
                label: t.$3,
                onTap: () {
                  // 1. Close type selector
                  Navigator.pop(context);
                  // 2. Show form sheet using outer context (not the dismissing sheet's context)
                  showModalBottomSheet(
                    context: outerContext,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (_) => AlarmFormSheet(type: t.$1),
                  );
                },
              )).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
            child: Text('👆 원하는 알림 종류를 탭하세요',
                style: TextStyle(
                    fontSize: 12, color: AppColors.gray400)),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
        ],
      ),
    );
  }
}

class _TypeCard extends StatelessWidget {
  final String type;
  final String emoji;
  final String label;
  final VoidCallback onTap;
  const _TypeCard({
    required this.type,
    required this.emoji,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primary100),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 4),
            Text(label, style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600,
              color: AppColors.primary700,
            ), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
