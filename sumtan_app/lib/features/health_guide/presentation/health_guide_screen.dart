import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';

class HealthGuideScreen extends StatelessWidget {
  const HealthGuideScreen({super.key});

  static const _guides = [
    (
      '💉',
      '예방접종 스케줄',
      '강아지: 생후 6-8주 DHPPi 1차, 이후 3-4주 간격 추가 접종.\n고양이: 생후 8주 FVRCP 1차, 3-4주 간격 추가 접종.',
    ),
    (
      '🦷',
      '구강 건강',
      '주 2-3회 양치질 권장. 치석이 쌓이면 스케일링이 필요해요.\n치주 질환은 심장·신장 건강에도 영향을 줄 수 있어요.',
    ),
    (
      '💊',
      '심장사상충 예방',
      '매달 1회 정기 투약을 권장해요. 모기에 의해 전파되며\n감염 시 치료가 매우 어려우므로 예방이 중요해요.',
    ),
    (
      '🍽️',
      '올바른 식이 관리',
      '나이·체중·건강 상태에 맞는 사료를 선택하세요.\n간식은 하루 칼로리의 10% 이하로 제한하는 것이 좋아요.',
    ),
    (
      '🏃',
      '운동과 활동량',
      '강아지는 품종별 운동량이 달라요. 산책은 최소 하루 1회.\n고양이는 놀이 활동으로 스트레스를 해소해 주세요.',
    ),
    (
      '🩺',
      '정기 건강 검진',
      '1-7살: 연 1회, 7살 이상: 연 2회 검진 권장.\n혈액 검사, 심장·치아·관절 검진이 포함돼요.',
    ),
    (
      '🐛',
      '기생충 예방',
      '내부 기생충(구충): 분기별 1회.\n외부 기생충(벼룩·진드기): 월 1회 예방 제품 사용.',
    ),
    (
      '⚖️',
      '체중 관리',
      '과체중은 관절염·당뇨의 원인이 될 수 있어요.\n적정 체중을 유지하면 평균 수명이 2년 이상 늘어나요.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: const Text('건강관리 가이드',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
                color: AppColors.gray900)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.gray700),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, color: AppColors.gray100),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        itemCount: _guides.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (_, i) => _GuideCard(
          emoji: _guides[i].$1,
          title: _guides[i].$2,
          body: _guides[i].$3,
        ),
      ),
    );
  }
}

class _GuideCard extends StatefulWidget {
  final String emoji;
  final String title;
  final String body;
  const _GuideCard({
    required this.emoji,
    required this.title,
    required this.body,
  });

  @override
  State<_GuideCard> createState() => _GuideCardState();
}

class _GuideCardState extends State<_GuideCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _expanded = !_expanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(AppSpacing.space4),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppRadius.radiusLg),
          border: Border.all(
            color: _expanded ? AppColors.primary200 : AppColors.gray200,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(widget.emoji, style: const TextStyle(fontSize: 24)),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(widget.title,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.gray900)),
                ),
                Icon(
                  _expanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: AppColors.gray400,
                  size: 20,
                ),
              ],
            ),
            if (_expanded) ...[
              const SizedBox(height: AppSpacing.space3),
              const Divider(color: AppColors.gray100),
              const SizedBox(height: AppSpacing.space3),
              Text(widget.body,
                  style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.gray700,
                      height: 1.6)),
            ],
          ],
        ),
      ),
    );
  }
}
