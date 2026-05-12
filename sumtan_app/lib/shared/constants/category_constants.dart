import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

enum RecordCategory {
  poop,
  condition,
  medication,
  weight,
  meal,
  water,
  hospital,
  vaccination,
  grooming,
  brushing,
  walk,
  memo,
}

class ConditionScoreLabel {
  final int score;
  final String word;
  final String emoji;

  const ConditionScoreLabel({
    required this.score,
    required this.word,
    required this.emoji,
  });

  String get recordText => '컨디션 $score점 - $word';

  static const fallback = ConditionScoreLabel(
    score: 3,
    word: '보통',
    emoji: '😐',
  );

  static ConditionScoreLabel fromScore(int score) {
    switch (score) {
      case 1:
        return const ConditionScoreLabel(score: 1, word: '최악', emoji: '😫');
      case 2:
        return const ConditionScoreLabel(score: 2, word: '저조', emoji: '😞');
      case 3:
        return const ConditionScoreLabel(score: 3, word: '보통', emoji: '😐');
      case 4:
        return const ConditionScoreLabel(score: 4, word: '양호', emoji: '😊');
      case 5:
        return const ConditionScoreLabel(score: 5, word: '최상', emoji: '🌟');
      default:
        return fallback;
    }
  }
}

extension RecordCategoryX on RecordCategory {
  String get name {
    switch (this) {
      case RecordCategory.poop:
        return 'poop';
      case RecordCategory.condition:
        return 'condition';
      case RecordCategory.medication:
        return 'medication';
      case RecordCategory.weight:
        return 'weight';
      case RecordCategory.meal:
        return 'meal';
      case RecordCategory.water:
        return 'water';
      case RecordCategory.hospital:
        return 'hospital';
      case RecordCategory.vaccination:
        return 'vaccination';
      case RecordCategory.grooming:
        return 'grooming';
      case RecordCategory.brushing:
        return 'brushing';
      case RecordCategory.walk:
        return 'walk';
      case RecordCategory.memo:
        return 'memo';
    }
  }

  String get label {
    switch (this) {
      case RecordCategory.poop:
        return '배변';
      case RecordCategory.condition:
        return '컨디션';
      case RecordCategory.medication:
        return '투약';
      case RecordCategory.weight:
        return '체중';
      case RecordCategory.meal:
        return '식사';
      case RecordCategory.water:
        return '음수';
      case RecordCategory.hospital:
        return '병원';
      case RecordCategory.vaccination:
        return '접종';
      case RecordCategory.grooming:
        return '미용';
      case RecordCategory.brushing:
        return '빗질';
      case RecordCategory.walk:
        return '산책';
      case RecordCategory.memo:
        return '메모';
    }
  }

  String get emoji {
    switch (this) {
      case RecordCategory.poop:
        return '💩';
      case RecordCategory.condition:
        return '🌡️';
      case RecordCategory.medication:
        return '💊';
      case RecordCategory.weight:
        return '⚖️';
      case RecordCategory.meal:
        return '🍽️';
      case RecordCategory.water:
        return '💧';
      case RecordCategory.hospital:
        return '🏥';
      case RecordCategory.vaccination:
        return '💉';
      case RecordCategory.grooming:
        return '🛁';
      case RecordCategory.brushing:
        return '🪥';
      case RecordCategory.walk:
        return '🦮';
      case RecordCategory.memo:
        return '📝';
    }
  }

  Color get color {
    switch (this) {
      case RecordCategory.poop:
        return AppColors.categoryPoop; // mint green
      case RecordCategory.condition:
        return AppColors.categoryCondition; // blue
      case RecordCategory.medication:
        return AppColors.categoryMedicine; // pink
      case RecordCategory.weight:
        return AppColors.categoryWeight; // yellow
      case RecordCategory.meal:
        return const Color(0xFF14B8A6); // teal
      case RecordCategory.water:
        return AppColors.categoryWater; // cyan
      case RecordCategory.hospital:
        return AppColors.danger400; // red
      case RecordCategory.vaccination:
        return AppColors.categoryVaccine; // purple
      case RecordCategory.grooming:
        return AppColors.categoryEmergency; // orange
      case RecordCategory.brushing:
        return const Color(0xFF84CC16); // lime
      case RecordCategory.walk:
        return const Color(0xFF818CF8); // indigo
      case RecordCategory.memo:
        return const Color(0xFF94A3B8); // slate
    }
  }

  Color get bgColor {
    switch (this) {
      case RecordCategory.poop:
        return AppColors.primary50; // mint light
      case RecordCategory.condition:
        return AppColors.info50; // blue light
      case RecordCategory.medication:
        return const Color(0xFFFDF2F8); // pink light
      case RecordCategory.weight:
        return AppColors.warning50; // yellow light
      case RecordCategory.meal:
        return const Color(0xFFF0FDFA); // teal light
      case RecordCategory.water:
        return AppColors.cyan50; // cyan light
      case RecordCategory.hospital:
        return AppColors.danger50; // red light
      case RecordCategory.vaccination:
        return const Color(0xFFFAF5FF); // purple light
      case RecordCategory.grooming:
        return const Color(0xFFFFF7ED); // orange light
      case RecordCategory.brushing:
        return const Color(0xFFF7FEE7); // lime light
      case RecordCategory.walk:
        return const Color(0xFFEEF2FF); // indigo light
      case RecordCategory.memo:
        return const Color(0xFFF8FAFC); // slate light
    }
  }

  static RecordCategory fromString(String s) {
    return RecordCategory.values.firstWhere(
      (e) => e.name == s,
      orElse: () => RecordCategory.memo,
    );
  }
}
