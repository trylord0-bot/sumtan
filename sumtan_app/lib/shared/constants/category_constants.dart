import 'package:flutter/material.dart';
import '../../../app/theme/app_colors.dart';

enum RecordCategory { poop, condition, medication, weight }

extension RecordCategoryX on RecordCategory {
  String get name {
    switch (this) {
      case RecordCategory.poop:      return 'poop';
      case RecordCategory.condition: return 'condition';
      case RecordCategory.medication:return 'medication';
      case RecordCategory.weight:    return 'weight';
    }
  }

  String get label {
    switch (this) {
      case RecordCategory.poop:      return '배변';
      case RecordCategory.condition: return '컨디션';
      case RecordCategory.medication:return '투약';
      case RecordCategory.weight:    return '체중';
    }
  }

  String get emoji {
    switch (this) {
      case RecordCategory.poop:      return '💩';
      case RecordCategory.condition: return '🌡️';
      case RecordCategory.medication:return '💊';
      case RecordCategory.weight:    return '⚖️';
    }
  }

  Color get color {
    switch (this) {
      case RecordCategory.poop:      return AppColors.categoryPoop;
      case RecordCategory.condition: return AppColors.categoryCondition;
      case RecordCategory.medication:return AppColors.categoryMedicine;
      case RecordCategory.weight:    return AppColors.categoryWeight;
    }
  }

  Color get bgColor {
    switch (this) {
      case RecordCategory.poop:      return const Color(0xFFFEF3C7);
      case RecordCategory.condition: return const Color(0xFFEFF6FF);
      case RecordCategory.medication:return const Color(0xFFFCE7F3);
      case RecordCategory.weight:    return AppColors.primary100;
    }
  }

  static RecordCategory fromString(String s) {
    return RecordCategory.values.firstWhere(
      (e) => e.name == s,
      orElse: () => RecordCategory.condition,
    );
  }
}
