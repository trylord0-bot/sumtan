import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

enum RecordCategory {
  poop,
  condition,
  medication,
  weight,
  meal,
  hospital,
  vaccination,
  grooming,
  memo,
}

extension RecordCategoryX on RecordCategory {
  String get name {
    switch (this) {
      case RecordCategory.poop:       return 'poop';
      case RecordCategory.condition:  return 'condition';
      case RecordCategory.medication: return 'medication';
      case RecordCategory.weight:     return 'weight';
      case RecordCategory.meal:       return 'meal';
      case RecordCategory.hospital:   return 'hospital';
      case RecordCategory.vaccination: return 'vaccination';
      case RecordCategory.grooming:   return 'grooming';
      case RecordCategory.memo:       return 'memo';
    }
  }

  String get label {
    switch (this) {
      case RecordCategory.poop:       return '배변';
      case RecordCategory.condition:  return '컨디션';
      case RecordCategory.medication: return '투약';
      case RecordCategory.weight:     return '체중';
      case RecordCategory.meal:       return '식사';
      case RecordCategory.hospital:   return '병원';
      case RecordCategory.vaccination: return '접종';
      case RecordCategory.grooming:   return '미용';
      case RecordCategory.memo:       return '메모';
    }
  }

  String get emoji {
    switch (this) {
      case RecordCategory.poop:       return '💩';
      case RecordCategory.condition:  return '🌡️';
      case RecordCategory.medication: return '💊';
      case RecordCategory.weight:     return '⚖️';
      case RecordCategory.meal:       return '🍽️';
      case RecordCategory.hospital:   return '🏥';
      case RecordCategory.vaccination: return '💉';
      case RecordCategory.grooming:   return '🛁';
      case RecordCategory.memo:       return '📝';
    }
  }

  Color get color {
    switch (this) {
      case RecordCategory.condition:  return AppColors.success400;
      case RecordCategory.poop:       return AppColors.info400;
      case RecordCategory.medication: return const Color(0xFFFB923C);
      case RecordCategory.weight:     return AppColors.warning400;
      case RecordCategory.meal:       return const Color(0xFF2DD4BF);
      case RecordCategory.hospital:   return const Color(0xFFFB923C);
      case RecordCategory.vaccination: return const Color(0xFFA78BFA);
      case RecordCategory.grooming:   return const Color(0xFFF472B6);
      case RecordCategory.memo:       return AppColors.gray400;
    }
  }

  Color get bgColor {
    switch (this) {
      case RecordCategory.condition:  return const Color(0xFFF0FDF4);
      case RecordCategory.poop:       return const Color(0xFFEFF6FF);
      case RecordCategory.medication: return const Color(0xFFFFF7ED);
      case RecordCategory.weight:     return AppColors.primary100;
      case RecordCategory.meal:       return const Color(0xFFF0FDFA);
      case RecordCategory.hospital:   return const Color(0xFFFFF7ED);
      case RecordCategory.vaccination: return const Color(0xFFFAF5FF);
      case RecordCategory.grooming:   return const Color(0xFFFDF2F8);
      case RecordCategory.memo:       return AppColors.gray100;
    }
  }

  static RecordCategory fromString(String s) {
    return RecordCategory.values.firstWhere(
      (e) => e.name == s,
      orElse: () => RecordCategory.condition,
    );
  }
}
