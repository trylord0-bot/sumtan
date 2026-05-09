import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary — Warm Mint
  static const Color primary950 = Color(0xFF022C22);
  static const Color primary900 = Color(0xFF064E3B);
  static const Color primary800 = Color(0xFF065F46);
  static const Color primary700 = Color(0xFF047857);
  static const Color primary600 = Color(0xFF059669);
  static const Color primary500 = Color(0xFF10B981);
  static const Color primary400 = Color(0xFF34D399); // ⭐ FAB / CTA / 주요 액션
  static const Color primary300 = Color(0xFF6EE7B7);
  static const Color primary200 = Color(0xFFA7F3D0);
  static const Color primary100 = Color(0xFFD1FAE5);
  static const Color primary50 = Color(0xFFECFDF5);

  // Neutral
  static const Color gray900 = Color(0xFF111827);
  static const Color gray800 = Color(0xFF1F2937);
  static const Color gray700 = Color(0xFF374151);
  static const Color gray600 = Color(0xFF4B5563);
  static const Color gray500 = Color(0xFF6B7280);
  static const Color gray400 = Color(0xFF9CA3AF);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray200 = Color(0xFFE5E7EB);
  static const Color gray100 = Color(0xFFF3F4F6);
  static const Color gray50 = Color(0xFFF9FAFB);

  static const Color creamBg = Color(0xFFFFFDF7); // ⭐ 앱 전체 배경
  static const Color navBg = Color(0xFFF6FFFB);
  static const Color white = Color(0xFFFFFFFF);

  // Semantic — Success
  static const Color success900 = Color(0xFF14532D);
  static const Color success600 = Color(0xFF16A34A);
  static const Color success400 = Color(0xFF4ADE80); // ⭐ 컨디션 좋음
  static const Color success200 = Color(0xFFBBF7D0);
  static const Color success50 = Color(0xFFF0FDF4);

  // Semantic — Warning
  static const Color warning900 = Color(0xFF78350F);
  static const Color warning600 = Color(0xFFD97706);
  static const Color warning400 = Color(0xFFFBBF24); // ⭐ 컨디션 보통
  static const Color warning200 = Color(0xFFFDE68A);
  static const Color warning50 = Color(0xFFFFFBEB);

  // Semantic — Danger
  static const Color danger900 = Color(0xFF7F1D1D);
  static const Color danger600 = Color(0xFFDC2626);
  static const Color danger400 = Color(0xFFF87171); // ⭐ 컨디션 나쁨
  static const Color danger200 = Color(0xFFFECACA);
  static const Color danger50 = Color(0xFFFEF2F2);

  // Semantic — Info
  static const Color info900 = Color(0xFF1E3A5F);
  static const Color info600 = Color(0xFF2563EB);
  static const Color info400 = Color(0xFF60A5FA);
  static const Color info200 = Color(0xFFBFDBFE);
  static const Color info50 = Color(0xFFEFF6FF);

  // Cyan (음수 전용)
  static const Color cyan400 = Color(0xFF22D3EE);
  static const Color cyan200 = Color(0xFFA5F3FC);
  static const Color cyan50 = Color(0xFFECFEFF);

  // Category — 기록 유형별
  static const Color categoryPoop = Color(0xFF34D399); // primary400
  static const Color categoryCondition = Color(0xFF60A5FA); // info400
  static const Color categoryMedicine = Color(0xFFF472B6); // pink
  static const Color categoryWeight = Color(0xFFFBBF24); // warning400
  static const Color categoryVaccine = Color(0xFFA78BFA); // purple
  static const Color categoryEmergency = Color(0xFFFB923C); // orange
  static const Color categoryWater = Color(0xFF22D3EE); // cyan400

  // Dark Mode
  static const Color dmBg = Color(0xFF0D1117);
  static const Color dmSurface = Color(0xFF161B22);
  static const Color dmCard = Color(0xFF21262D);
  static const Color dmBorder = Color(0xFF30363D);
  static const Color dmText = Color(0xFFE6EDF3);
  static const Color dmSubtext = Color(0xFF8B949E);
}
