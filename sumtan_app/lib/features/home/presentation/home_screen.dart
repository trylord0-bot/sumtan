import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../features/alarm/data/alarm_model.dart';
import '../../../features/alarm/provider/alarm_provider.dart';
import '../../../features/pet/data/pet_model.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../features/record/provider/record_provider.dart';
import '../../../features/record/data/record_model.dart';
import '../../../features/record/presentation/category_bottom_sheet.dart';
import '../../../shared/constants/category_constants.dart';
import '../../../shared/widgets/app_card.dart';
import '../../../core/utils/date_utils.dart' as du;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = ref.watch(selectedPetProvider);
    final todayAsync = ref.watch(todayRecordsProvider);
    final lastAsync = ref.watch(lastRecordProvider);
    final weightAsync = ref.watch(weightHistoryProvider);
    final poopAsync = ref.watch(weeklyPoopStatsProvider);
    final mealAsync = ref.watch(weeklyMealStatsProvider);
    final waterAsync = ref.watch(weeklyWaterStatsProvider);
    final alarmAsync = ref.watch(alarmListProvider);

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(todayRecordsProvider);
          ref.invalidate(lastRecordProvider);
          ref.invalidate(weightHistoryProvider);
          ref.invalidate(weeklyPoopStatsProvider);
          ref.invalidate(weeklyMealStatsProvider);
          ref.invalidate(weeklyWaterStatsProvider);
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.space4,
                  AppSpacing.space5,
                  AppSpacing.space4,
                  0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ① 인사 카드
                    _GreetingSection(pet: pet, lastAsync: lastAsync),
                    const SizedBox(height: AppSpacing.space5),

                    // ② 오늘의 상태
                    _SectionHeader(
                      title: '오늘의 상태',
                      linkLabel: '+ 기록하기',
                      onLink: () async {
                        if (pet == null) {
                          showTopToast(
                              context, '아직 반려동물이 없네요 🐾 프로필에서 먼저 등록해 주세요!');
                          return;
                        }
                        await showCategoryBottomSheet(context);
                        ref.invalidate(todayRecordsProvider);
                        ref.invalidate(weeklyPoopStatsProvider);
                        ref.invalidate(weeklyMealStatsProvider);
                        ref.invalidate(weeklyWaterStatsProvider);
                        ref.invalidate(weightHistoryProvider);
                        ref.invalidate(lastRecordProvider);
                      },
                    ),
                    const SizedBox(height: AppSpacing.space3),
                    todayAsync.when(
                      data: (records) => _TodaySummaryGrid(
                        records: records,
                        pet: pet,
                        alarms: alarmAsync.valueOrNull ?? [],
                      ),
                      loading: () => const _SummarySkeleton(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space5),

                    // ③ 오늘의 리마인더 (항목 없으면 숨김)
                    alarmAsync.maybeWhen(
                      data: (alarms) {
                        final list = _filteredReminders(alarms);
                        if (list.isEmpty) return const SizedBox.shrink();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const _SectionHeader(
                                title: '오늘의 리마인더', linkLabel: ''),
                            const SizedBox(height: AppSpacing.space3),
                            ...list.take(3).map((a) => Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: AppSpacing.space2),
                                  child: _ReminderCard(alarm: a),
                                )),
                            const SizedBox(height: AppSpacing.space5),
                          ],
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    ),

                    // ④ 오늘의 기록
                    _SectionHeader(
                      title: '오늘의 기록',
                      linkLabel: '전체 보기',
                      onLink: () => context.go('/journal'),
                    ),
                    const SizedBox(height: AppSpacing.space3),
                    todayAsync.when(
                      data: (records) {
                        final display = records.reversed.take(5).toList();
                        return display.isEmpty
                            ? const _EmptyState()
                            : _RecordList(records: display);
                      },
                      loading: () => const SizedBox(
                        height: 80,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      error: (_, __) => const _EmptyState(),
                    ),
                    const SizedBox(height: AppSpacing.space5),

                    // ⑤ 이번 주 통계
                    const _SectionHeader(title: '이번 주 통계', linkLabel: ''),
                    const SizedBox(height: AppSpacing.space3),

                    poopAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '💩',
                        title: '배변 횟수',
                        stats: stats,
                        todayColor: AppColors.primary400,
                        pastColor: AppColors.primary200,
                        unit: '회',
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    mealAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '🍚',
                        title: '식사 횟수',
                        stats: stats,
                        todayColor: AppColors.warning400,
                        pastColor: AppColors.warning200,
                        unit: '끼',
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    waterAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '💧',
                        title: '음수 단계',
                        stats: stats,
                        todayColor: AppColors.cyan400,
                        pastColor: AppColors.cyan200,
                        unit: '점',
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    _WeightSection(weightAsync: weightAsync, ref: ref),
                    const SizedBox(height: 120),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Alarm> _filteredReminders(List<Alarm> alarms) {
    final relevant = alarms.where((a) {
      if (a.status == AlarmStatus.todayPending) return true;
      if (a.status == AlarmStatus.past) return true;
      if (a.status == AlarmStatus.upcoming) {
        final d = a.daysUntil;
        return d != null && d >= 1 && d <= 7;
      }
      return false;
    }).toList();
    relevant.sort((a, b) {
      int order(AlarmStatus s) {
        if (s == AlarmStatus.past) return 0;
        if (s == AlarmStatus.todayPending) return 1;
        return 2;
      }

      return order(a.status).compareTo(order(b.status));
    });
    return relevant;
  }

  Widget _statsLoadingBox() => Container(
        height: 140,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.gray200),
        ),
        child: const Center(child: CircularProgressIndicator()),
      );
}

// ─── Greeting section ──────────────────────────────────────────────────────────

class _GreetingSection extends StatelessWidget {
  final Pet? pet;
  final AsyncValue<Record?> lastAsync;

  const _GreetingSection({required this.pet, required this.lastAsync});

  @override
  Widget build(BuildContext context) {
    final name = pet?.name ?? '반려동물';
    final now = DateTime.now();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          du.formatDate(now),
          style: const TextStyle(fontSize: 12, color: AppColors.gray500),
        ),
        const SizedBox(height: 10),

        // 인사 텍스트 + 아바타
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PetAvatar(pet: pet),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.gray900,
                        height: 1.4,
                      ),
                      children: [
                        const TextSpan(text: '안녕하세요! '),
                        TextSpan(
                          text: name,
                          style: const TextStyle(color: AppColors.primary600),
                        ),
                        const TextSpan(text: '\n오늘도 건강한가요? 🐾'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  lastAsync.when(
                    data: (record) {
                      if (record == null) {
                        return const Text(
                          '아직 기록이 없어요',
                          style:
                              TextStyle(fontSize: 12, color: AppColors.gray400),
                        );
                      }
                      final dt = record.recordedAtDate;
                      final now2 = DateTime.now();
                      final timeStr = (dt.year == now2.year &&
                              dt.month == now2.month &&
                              dt.day == now2.day)
                          ? '오늘 ${du.formatTime(dt)}'
                          : du.formatMonthDay(dt);
                      return Text(
                        '마지막 기록 · $timeStr',
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.gray400),
                      );
                    },
                    loading: () => const SizedBox.shrink(),
                    error: (_, __) => const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PetAvatar extends StatelessWidget {
  final Pet? pet;
  const _PetAvatar({required this.pet});

  @override
  Widget build(BuildContext context) {
    if (pet == null) {
      return Container(
        width: 64,
        height: 64,
        decoration: const BoxDecoration(
          color: AppColors.primary200,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: const Text('🐾', style: TextStyle(fontSize: 32)),
      );
    }

    final hasPhoto =
        pet!.profileImagePath != null && pet!.profileImagePath!.isNotEmpty;

    if (hasPhoto) {
      return Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.12),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          image: DecorationImage(
            image: FileImage(File(pet!.profileImagePath!)),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    final emoji = pet!.species == 'dog'
        ? '🐶'
        : pet!.species == 'cat'
            ? '🐱'
            : '🐾';

    return Container(
      width: 64,
      height: 64,
      decoration: const BoxDecoration(
        color: AppColors.primary200,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(emoji, style: const TextStyle(fontSize: 32)),
    );
  }
}

// ─── Today summary grid (6 badges, 2×3) ───────────────────────────────────────

class _TodaySummaryGrid extends StatelessWidget {
  final List<Record> records;
  final Pet? pet;
  final List<Alarm> alarms;

  const _TodaySummaryGrid({
    required this.records,
    required this.pet,
    required this.alarms,
  });

  @override
  Widget build(BuildContext context) {
    final poopCount = records.where((r) => r.category == 'poop').length;
    final mealCount = records.where((r) => r.category == 'meal').length;
    final medCount = records.where((r) => r.category == 'medication').length;
    final waterCount = records.where((r) => r.category == 'water').length;
    final brushingCount = records.where((r) => r.category == 'brushing').length;
    final walkCount = records.where((r) => r.category == 'walk').length;

    final conditionRecord = records.lastWhere(
      (r) => r.category == 'condition',
      orElse: () =>
          const Record(petId: 0, category: '', recordedAt: '', createdAt: ''),
    );

    final int? condScore = conditionRecord.category.isNotEmpty
        ? (conditionRecord.dataJson?['score'] as num?)?.toInt()
        : null;

    final condLabel =
        condScore != null ? ConditionScoreLabel.fromScore(condScore) : null;

    // 종별 추가 뱃지
    final species = pet?.species ?? 'dog';
    final RecordCategory speciesCategory;
    final String speciesIcon;
    final String speciesValue;
    final String speciesLabel;
    if (species == 'dog') {
      speciesCategory = RecordCategory.walk;
      speciesIcon = '🦮';
      speciesValue = walkCount > 0 ? '$walkCount회' : '-';
      speciesLabel = '산책';
    } else {
      speciesCategory = RecordCategory.brushing;
      speciesIcon = '🪥';
      speciesValue = brushingCount > 0 ? '$brushingCount회' : '-';
      speciesLabel = '빗질';
    }

    Color statusColor(RecordCategory category, bool hasRecord) =>
        hasRecord ? category.color : AppColors.gray300;

    return Column(
      children: [
        // Row 1: 컨디션, 식사, 음수
        Row(
          children: [
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(
                  RecordCategory.condition,
                  condScore != null,
                ),
                icon: condLabel?.emoji ?? ConditionScoreLabel.fallback.emoji,
                value: condLabel?.word ?? '-',
                label: '컨디션',
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.meal, mealCount > 0),
                icon: '🍚',
                value: mealCount > 0 ? '$mealCount끼' : '-',
                label: '식사',
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.water, waterCount > 0),
                icon: '💧',
                value: waterCount > 0 ? '$waterCount회' : '-',
                label: '음수',
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space2),
        // Row 2: 배변, 투약, 산책(강아지) 또는 빗질(고양이)
        Row(
          children: [
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.poop, poopCount > 0),
                icon: '💩',
                value: '$poopCount회',
                label: '배변',
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.medication, medCount > 0),
                icon: '💊',
                value: medCount > 0 ? '$medCount회' : '-',
                label: '투약',
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(
                  speciesCategory,
                  speciesCategory == RecordCategory.walk
                      ? walkCount > 0
                      : brushingCount > 0,
                ),
                icon: speciesIcon,
                value: speciesValue,
                label: speciesLabel,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SummaryChip extends StatelessWidget {
  final Color topColor;
  final String icon;
  final String value;
  final String label;

  const _SummaryChip({
    required this.topColor,
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200, width: 1),
      ),
      child: Column(
        children: [
          Container(
            height: 3,
            decoration: BoxDecoration(
              color: topColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space3,
              horizontal: AppSpacing.space2,
            ),
            child: Column(
              children: [
                Text(icon, style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 4),
                Text(value,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.gray900,
                    )),
                const SizedBox(height: 2),
                Text(label,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray400,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryChipSkeleton extends StatelessWidget {
  const _SummaryChipSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

class _SummarySkeleton extends StatelessWidget {
  const _SummarySkeleton();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: _SummaryChipSkeleton()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: _SummaryChipSkeleton()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: _SummaryChipSkeleton()),
          ],
        ),
        SizedBox(height: AppSpacing.space2),
        Row(
          children: [
            Expanded(child: _SummaryChipSkeleton()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: _SummaryChipSkeleton()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: _SummaryChipSkeleton()),
          ],
        ),
        SizedBox(height: AppSpacing.space2),
        Row(
          children: [
            Expanded(child: _SummaryChipSkeleton()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: SizedBox.shrink()),
            SizedBox(width: AppSpacing.space2),
            Expanded(child: SizedBox.shrink()),
          ],
        ),
      ],
    );
  }
}

// ─── Reminder section ──────────────────────────────────────────────────────────

class _ReminderCard extends StatelessWidget {
  final Alarm alarm;
  const _ReminderCard({required this.alarm});

  @override
  Widget build(BuildContext context) {
    final status = alarm.status;

    final Color badgeBg;
    final Color badgeText;
    final String badgeLabel;

    if (status == AlarmStatus.past) {
      badgeBg = AppColors.danger50;
      badgeText = AppColors.danger600;
      badgeLabel = '지남';
    } else if (status == AlarmStatus.todayPending) {
      badgeBg = AppColors.warning50;
      badgeText = AppColors.warning600;
      badgeLabel = '오늘';
    } else {
      final d = alarm.daysUntil ?? 0;
      badgeBg = AppColors.success50;
      badgeText = AppColors.success600;
      badgeLabel = 'D-$d';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: status == AlarmStatus.todayPending
            ? const Color(0xFFFFFBEB)
            : AppColors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: status == AlarmStatus.todayPending
              ? AppColors.warning200
              : AppColors.gray200,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.gray100,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text(
              alarmTypeEmoji(alarm.type),
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alarm.label?.isNotEmpty == true
                      ? alarm.label!
                      : alarmTypeLabel(alarm.type),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray900,
                  ),
                ),
                if (alarm.scheduledAt != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    du.formatMonthDay(DateTime.parse(alarm.scheduledAt!)),
                    style:
                        const TextStyle(fontSize: 11, color: AppColors.gray400),
                  ),
                ],
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: badgeBg,
              borderRadius: BorderRadius.circular(9999),
            ),
            child: Text(
              badgeLabel,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: badgeText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Section header ────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  final String title;
  final String linkLabel;
  final VoidCallback? onLink;

  const _SectionHeader({
    required this.title,
    required this.linkLabel,
    this.onLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: AppColors.gray600,
            )),
        const Spacer(),
        if (linkLabel.isNotEmpty)
          GestureDetector(
            onTap: onLink,
            child: Text(linkLabel,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary600,
                )),
          ),
      ],
    );
  }
}

// ─── Record list ───────────────────────────────────────────────────────────────

class _RecordList extends StatelessWidget {
  final List<Record> records;
  const _RecordList({required this.records});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: records.map((r) {
        final cat = RecordCategoryX.fromString(r.category);
        final time = du.formatTime(r.recordedAtDate);
        final title = _buildTitle(r);
        final subtitle = _buildSubtitle(r);

        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.space2),
          child: AppCard(
            padding: EdgeInsets.zero,
            onTap: () => context.go('/journal', extra: r),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 4,
                    decoration: BoxDecoration(
                      color: cat.color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: cat.bgColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child:
                          Text(cat.emoji, style: const TextStyle(fontSize: 18)),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.gray900,
                              )),
                          if (subtitle.isNotEmpty) ...[
                            const SizedBox(height: 2),
                            Text(subtitle,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.gray600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                          ],
                          const SizedBox(height: 2),
                          Text(time,
                              style: const TextStyle(
                                fontSize: 11,
                                color: AppColors.gray400,
                              )),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: AppSpacing.space3),
                    child: Center(
                      child: Text('›',
                          style: TextStyle(
                              fontSize: 20, color: AppColors.gray300)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  String _buildTitle(Record r) {
    final d = r.dataJson;
    switch (r.category) {
      case 'condition':
        final score = (d?['score'] as num?)?.toInt();
        if (score == null) return '컨디션';
        return ConditionScoreLabel.fromScore(score).recordText;
      case 'poop':
        final type = d?['type'] as String? ?? '';
        return type.isNotEmpty ? '대변 — $type' : '대변';
      case 'medication':
        final med = d?['medicine'] as String? ?? '';
        return med.isNotEmpty ? med : '투약';
      case 'weight':
        final kg = d?['weight_kg'];
        return kg != null ? '체중 기록 — ${kg}kg' : '체중 기록';
      case 'meal':
        final mealType = d?['meal_type'] as String?;
        return mealType != null ? '식사 기록 — $mealType' : '식사 기록';
      case 'water':
        return '음수 기록';
      case 'hospital':
        final visitType = d?['visit_type'] as String?;
        return visitType != null ? '병원 기록 — $visitType' : '병원 기록';
      case 'vaccination':
        return '접종 기록';
      case 'grooming':
        return '미용 기록';
      case 'brushing':
        return '빗질 기록';
      case 'walk':
        final duration = d?['duration_min'];
        return duration != null ? '산책 기록 — $duration분' : '산책 기록';
      case 'memo':
        final title = d?['title'] as String?;
        return title != null && title.isNotEmpty ? title : '메모';
      default:
        return RecordCategoryX.fromString(r.category).label;
    }
  }

  String _buildSubtitle(Record r) {
    final d = r.dataJson;
    if (d == null || d.isEmpty) return r.memo ?? '';
    switch (r.category) {
      case 'poop':
        final status = d['status'] as String? ?? '';
        final color = d['color'] as String? ?? '';
        return [status, color].where((s) => s.isNotEmpty).join(', ');
      case 'condition':
        final tags = (d['symptoms'] as List?)?.join(', ') ?? '';
        return tags.isNotEmpty ? tags : (r.memo ?? '');
      case 'medication':
        final dose = d['dose'] as String? ?? '';
        final method = d['method'] as String? ?? '';
        final parts = [
          if (dose.isNotEmpty) dose,
          if (method.isNotEmpty) method,
        ];
        return parts.isNotEmpty ? '${parts.join(' · ')} 투여 완료' : (r.memo ?? '');
      case 'weight':
        final method = d['method'] as String? ?? '';
        return method.isNotEmpty ? method : (r.memo ?? '');
      case 'meal':
        const mealAmountLabels = {
          'very_little': '매우 적음',
          'little': '적음',
          'normal': '보통',
          'much': '많음',
          'very_much': '매우 많음',
        };
        final mealAmt = d['meal_amount'] as String?;
        final foodName = d['food_name'] as String?;
        final amountG = d['amount_g'];
        final parts = [
          if (mealAmt != null) mealAmountLabels[mealAmt] ?? mealAmt,
          if (foodName != null && foodName.isNotEmpty) foodName,
          if (amountG != null) '${amountG}g',
        ];
        return parts.isNotEmpty ? parts.join(' · ') : (r.memo ?? '');
      case 'water':
        const waterLabels = {
          'very_little': '매우 적음',
          'little': '적음',
          'normal': '보통',
          'much': '많음',
          'very_much': '매우 많음',
        };
        final amount = d['water_amount'] as String?;
        final ml = d['milliliter'];
        final amountStr = waterLabels[amount] ?? amount ?? '';
        return ml != null ? '$amountStr · ${ml}mL' : amountStr;
      case 'vaccination':
        final vaccines = (d['vaccines'] as List?)?.join(', ') ?? '';
        final hospital = d['hospital_name'] as String?;
        final parts = [
          if (vaccines.isNotEmpty) vaccines,
          if (hospital != null && hospital.isNotEmpty) hospital,
        ];
        return parts.isNotEmpty ? parts.join(' · ') : (r.memo ?? '');
      case 'hospital':
        final hospital = d['hospital_name'] as String?;
        final symptoms = (d['symptoms'] as List?)?.join(', ') ?? '';
        final diagnosis = d['diagnosis'] as String?;
        final parts = [
          if (hospital != null && hospital.isNotEmpty) hospital,
          if (symptoms.isNotEmpty) symptoms,
          if (diagnosis != null && diagnosis.isNotEmpty) diagnosis,
        ];
        return parts.isNotEmpty ? parts.join(' · ') : (r.memo ?? '');
      case 'grooming':
        final types = (d['types'] as List?)?.join(', ') ?? '';
        final shop = d['shop_name'] as String?;
        final parts = [
          if (types.isNotEmpty) types,
          if (shop != null && shop.isNotEmpty) shop,
        ];
        return parts.isNotEmpty ? parts.join(' · ') : (r.memo ?? '');
      case 'brushing':
        final parts = (d['parts'] as List?)?.join(', ') ?? '';
        final duration = d['duration_min'];
        final items = [
          if (parts.isNotEmpty) parts,
          if (duration != null) '$duration분',
        ];
        return items.isNotEmpty ? items.join(' · ') : (r.memo ?? '');
      case 'walk':
        final distance = d['distance_km'];
        return distance != null ? '${distance}km' : (r.memo ?? '');
      case 'memo':
        final content = d['content'] as String?;
        final pinned = d['pinned'] as String?;
        final parts = [
          if (pinned != null && pinned.isNotEmpty) pinned,
          if (content != null && content.isNotEmpty) content,
        ];
        return parts.isNotEmpty ? parts.join(' · ') : '';
      default:
        return r.memo ?? '';
    }
  }
}

// ─── Weekly bar card (공통: 배변 / 식사) ──────────────────────────────────────

class _WeeklyBarCard extends StatelessWidget {
  final String emoji;
  final String title;
  final Map<DateTime, int> stats;
  final Color todayColor;
  final Color pastColor;
  final String unit;

  const _WeeklyBarCard({
    required this.emoji,
    required this.title,
    required this.stats,
    required this.todayColor,
    required this.pastColor,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final days = List.generate(
        7, (i) => DateTime(now.year, now.month, now.day - (6 - i)));
    final counts = days.map((d) => stats[d] ?? 0).toList();
    final total = counts.fold<int>(0, (a, b) => a + b);
    final avg = total / 7;
    final maxCount = counts.isEmpty ? 1 : counts.reduce(math.max);
    final barMax = maxCount < 1 ? 1 : maxCount;

    const dayLabels = ['월', '화', '수', '목', '금', '토', '일'];

    return Container(
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('$emoji 이번 주 $title',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray700,
                  )),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: AppColors.primary50,
                  borderRadius: BorderRadius.circular(9999),
                  border: Border.all(color: AppColors.primary200),
                ),
                child: Text(
                  '평균 ${avg.toStringAsFixed(1)}$unit/일',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space4),
          SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(7, (i) {
                final d = days[i];
                final count = counts[i];
                final isToday = d.year == now.year &&
                    d.month == now.month &&
                    d.day == now.day;
                final isFuture = d.isAfter(now);
                final barFrac = isFuture ? 0.0 : count / barMax;
                final barH = math.max(barFrac * 56.0, count > 0 ? 8.0 : 4.0);
                final barColor = isToday
                    ? todayColor
                    : (count > 0 ? pastColor : AppColors.gray200);
                final wLabel = dayLabels[(d.weekday - 1) % 7];

                return Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        isFuture ? '-' : (count > 0 ? '$count' : ''),
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: isToday ? todayColor : AppColors.gray500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          height: barH,
                          decoration: BoxDecoration(
                            color: barColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        wLabel,
                        style: TextStyle(
                          fontSize: 11,
                          color: isToday ? todayColor : AppColors.gray400,
                          fontWeight:
                              isToday ? FontWeight.w700 : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Weight section ────────────────────────────────────────────────────────────

class _WeightSection extends StatelessWidget {
  final AsyncValue<List<Record>> weightAsync;
  final WidgetRef ref;

  const _WeightSection({required this.weightAsync, required this.ref});

  @override
  Widget build(BuildContext context) {
    final period = ref.watch(weightPeriodProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('⚖️ 체중 추이',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray600,
                )),
            const Spacer(),
            _PeriodToggle(
              selected: period,
              onSelect: (v) =>
                  ref.read(weightPeriodProvider.notifier).state = v,
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.space3),
        weightAsync.when(
          data: (records) => _WeightGraphCard(records: records, period: period),
          loading: () => Container(
            height: 160,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.gray200),
            ),
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (_, __) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _PeriodToggle extends StatelessWidget {
  final int selected;
  final void Function(int) onSelect;

  const _PeriodToggle({required this.selected, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gray100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ToggleBtn(
              label: '7일', value: 7, selected: selected, onSelect: onSelect),
          _ToggleBtn(
              label: '30일', value: 30, selected: selected, onSelect: onSelect),
        ],
      ),
    );
  }
}

class _ToggleBtn extends StatelessWidget {
  final String label;
  final int value;
  final int selected;
  final void Function(int) onSelect;

  const _ToggleBtn({
    required this.label,
    required this.value,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = selected == value;
    return GestureDetector(
      onTap: () => onSelect(value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary400 : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isActive ? AppColors.white : AppColors.gray500,
          ),
        ),
      ),
    );
  }
}

class _WeightGraphCard extends StatelessWidget {
  final List<Record> records;
  final int period;

  const _WeightGraphCard({required this.records, required this.period});

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(AppSpacing.space5),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.gray200),
        ),
        child: const Center(
          child: Text('체중 데이터가 없어요',
              style: TextStyle(fontSize: 14, color: AppColors.gray400)),
        ),
      );
    }

    double? currentWeight;
    for (final r in records.reversed) {
      final kg = r.dataJson?['weight_kg'];
      if (kg != null) {
        currentWeight = (kg as num).toDouble();
        break;
      }
    }

    return Container(
      padding: const EdgeInsets.all(AppSpacing.space4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('⚖️ 체중 변화',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gray700,
                  )),
              const Spacer(),
              if (currentWeight != null)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.primary50,
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(color: AppColors.primary200),
                  ),
                  child: Text(
                    '${currentWeight.toStringAsFixed(1)}kg',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary700,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.space3),
          SizedBox(
            height: 90,
            child: CustomPaint(
              painter: _WeightLinePainter(records: records, period: period),
              size: Size.infinite,
            ),
          ),
          const SizedBox(height: AppSpacing.space2),
          const Row(
            children: [
              _LegendDot(color: AppColors.primary400, label: '실측 체중'),
              SizedBox(width: 12),
              _LegendDot(color: AppColors.gray300, label: '표준 범위'),
            ],
          ),
        ],
      ),
    );
  }
}

class _LegendDot extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendDot({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
        const SizedBox(width: 4),
        Text(label,
            style: const TextStyle(fontSize: 11, color: AppColors.gray500)),
      ],
    );
  }
}

class _WeightLinePainter extends CustomPainter {
  final List<Record> records;
  final int period;

  _WeightLinePainter({required this.records, required this.period});

  @override
  void paint(Canvas canvas, Size size) {
    if (records.isEmpty) return;

    final dataPoints = <MapEntry<DateTime, double>>[];
    for (final r in records) {
      final kg = r.dataJson?['weight_kg'];
      if (kg != null) {
        dataPoints.add(MapEntry(r.recordedAtDate, (kg as num).toDouble()));
      }
    }
    if (dataPoints.isEmpty) return;

    final weights = dataPoints.map((e) => e.value).toList();
    final minW = weights.reduce(math.min);
    final maxW = weights.reduce(math.max);
    final range = maxW - minW;
    final paddedMin = minW - (range == 0 ? 0.5 : range * 0.15);
    final paddedMax = maxW + (range == 0 ? 0.5 : range * 0.15);
    final totalRange = paddedMax - paddedMin;
    final chartH = size.height - 20.0;
    final chartW = size.width;

    final pts = <Offset>[];
    for (int i = 0; i < dataPoints.length; i++) {
      final x = dataPoints.length == 1
          ? chartW / 2
          : chartW * i / (dataPoints.length - 1);
      final y =
          chartH - chartH * (dataPoints[i].value - paddedMin) / totalRange;
      pts.add(Offset(x, y));
    }

    final fillPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.primary400.withValues(alpha: 0.25),
          AppColors.primary400.withValues(alpha: 0.0),
        ],
      ).createShader(Rect.fromLTWH(0, 0, chartW, chartH));
    final fillPath = Path()..moveTo(pts.first.dx, chartH);
    for (final p in pts) {
      fillPath.lineTo(p.dx, p.dy);
    }
    fillPath.lineTo(pts.last.dx, chartH);
    fillPath.close();
    canvas.drawPath(fillPath, fillPaint);

    final linePaint = Paint()
      ..color = AppColors.primary400
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final linePath = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (int i = 1; i < pts.length; i++) {
      linePath.lineTo(pts[i].dx, pts[i].dy);
    }
    canvas.drawPath(linePath, linePaint);

    final now = DateTime.now();
    for (int i = 0; i < pts.length; i++) {
      final dt = dataPoints[i].key;
      final isToday =
          dt.year == now.year && dt.month == now.month && dt.day == now.day;
      final radius = isToday ? 6.0 : 4.0;
      if (isToday) {
        canvas.drawCircle(
            pts[i],
            10.0,
            Paint()
              ..color = AppColors.primary400.withValues(alpha: 0.2)
              ..style = PaintingStyle.fill);
      }
      canvas.drawCircle(
          pts[i],
          radius,
          Paint()
            ..color = AppColors.primary400
            ..style = PaintingStyle.fill);
      canvas.drawCircle(
          pts[i],
          radius - 1.5,
          Paint()
            ..color = AppColors.white
            ..style = PaintingStyle.fill);
    }

    const labelStyle = TextStyle(fontSize: 10, color: AppColors.gray400);
    for (int i = 0; i < dataPoints.length; i++) {
      final dt = dataPoints[i].key;
      final isToday =
          dt.year == now.year && dt.month == now.month && dt.day == now.day;
      if (i != 0 && i != dataPoints.length - 1 && !isToday) continue;
      final label = isToday ? '오늘' : '${dt.month}/${dt.day}';
      final tp = TextPainter(
        text: TextSpan(text: label, style: labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(pts[i].dx - tp.width / 2, chartH + 4));
    }
  }

  @override
  bool shouldRepaint(_WeightLinePainter old) =>
      old.records != records || old.period != period;
}

// ─── Empty state ───────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.space8,
        horizontal: AppSpacing.space5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200, width: 1.5),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('🐾', style: TextStyle(fontSize: 36)),
          SizedBox(height: AppSpacing.space3),
          Text(
            '아직 오늘의 기록이 없어요',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.gray600,
            ),
          ),
          SizedBox(height: AppSpacing.space2),
          Text(
            '반려동물의 컨디션, 배변, 체중을\n기록해 건강을 관리해 보세요!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: AppColors.gray400),
          ),
        ],
      ),
    );
  }
}
