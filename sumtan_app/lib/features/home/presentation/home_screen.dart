import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/l10n/static_text.dart';
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
import '../../../features/record/presentation/record_subtitle_builder.dart';
import '../../../shared/constants/category_constants.dart';
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
    final latestWeightRecord =
        ref.watch(latestWeightRecordProvider).valueOrNull;
    double? diaryWeight;
    if (latestWeightRecord != null) {
      final kg = latestWeightRecord.dataJson?['weight_kg'];
      if (kg != null) diaryWeight = (kg as num).toDouble();
    }
    final displayWeight = diaryWeight ?? pet?.weight;

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
                      title: context.l10n.todayStatus,
                      linkLabel: context.l10n.addRecord,
                      onLink: () async {
                        if (pet == null) {
                          showTopToast(context, context.l10n.toastNeedPet);
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
                            _SectionHeader(
                                title: context.l10n.todayReminders,
                                linkLabel: ''),
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
                      title: context.l10n.todayRecords,
                      linkLabel: context.l10n.viewAll,
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

                    // ⑤ 통계 추이
                    const _StatsHeader(),
                    const SizedBox(height: AppSpacing.space3),

                    poopAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '💩',
                        title: context.l10n.pottyCount,
                        stats: stats,
                        todayColor: AppColors.primary400,
                        pastColor: AppColors.primary200,
                        unit: context.l10n.timesUnit,
                        period: ref.watch(statsPeriodProvider),
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    mealAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '🍚',
                        title: context.l10n.mealCount,
                        stats: stats,
                        todayColor: AppColors.warning400,
                        pastColor: AppColors.warning200,
                        unit: context.l10n.mealsUnit,
                        period: ref.watch(statsPeriodProvider),
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    waterAsync.when(
                      data: (stats) => _WeeklyBarCard(
                        emoji: '💧',
                        title: context.l10n.waterLevel,
                        stats: stats,
                        todayColor: AppColors.cyan400,
                        pastColor: AppColors.cyan200,
                        unit: context.l10n.timesUnit,
                        period: ref.watch(statsPeriodProvider),
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    weightAsync.when(
                      data: (records) => _WeightGraphCard(
                        records: records,
                        period: ref.watch(statsPeriodProvider),
                        displayWeight: displayWeight,
                      ),
                      loading: () => _statsLoadingBox(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
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
    final name = pet?.name ?? context.l10n.pet;
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
                        TextSpan(text: context.l10n.helloGreeting),
                        TextSpan(
                          text: name,
                          style: const TextStyle(color: AppColors.primary600),
                        ),
                        TextSpan(text: context.l10n.healthyTodayMsg),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  lastAsync.when(
                    data: (record) {
                      if (record == null) {
                        return Text(
                          context.l10n.noRecordsYet,
                          style: const TextStyle(
                              fontSize: 12, color: AppColors.gray400),
                        );
                      }
                      final dt = record.recordedAtDate;
                      final now2 = DateTime.now();
                      final timeStr = (dt.year == now2.year &&
                              dt.month == now2.month &&
                              dt.day == now2.day)
                          ? '${context.l10n.today} ${du.formatTime(dt)}'
                          : du.formatMonthDay(dt);
                      return Text(
                        context.l10n.lastRecord(timeStr),
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

    final rawPath = pet!.profileImagePath;
    final hasPhoto =
        rawPath != null && rawPath.isNotEmpty && File(rawPath).existsSync();

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
            image: FileImage(File(rawPath)),
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

    final condLabel = condScore != null
        ? ConditionScoreLabel.localizedFromScore(context, condScore)
        : null;

    // 종별 추가 뱃지
    final species = pet?.species ?? 'dog';
    final RecordCategory speciesCategory;
    final String speciesIcon;
    final String speciesValue;
    final String speciesLabel;
    if (species == 'dog') {
      speciesCategory = RecordCategory.walk;
      speciesIcon = '🦮';
      speciesValue =
          walkCount > 0 ? '$walkCount${context.l10n.timesUnit}' : '-';
      speciesLabel = RecordCategory.walk.localizedLabel(context);
    } else {
      speciesCategory = RecordCategory.brushing;
      speciesIcon = '🪥';
      speciesValue =
          brushingCount > 0 ? '$brushingCount${context.l10n.timesUnit}' : '-';
      speciesLabel = RecordCategory.brushing.localizedLabel(context);
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
                label: RecordCategory.condition.localizedLabel(context),
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.meal, mealCount > 0),
                icon: '🍚',
                value:
                    mealCount > 0 ? '$mealCount${context.l10n.mealsUnit}' : '-',
                label: RecordCategory.meal.localizedLabel(context),
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.water, waterCount > 0),
                icon: '💧',
                value: waterCount > 0
                    ? '$waterCount${context.l10n.timesUnit}'
                    : '-',
                label: RecordCategory.water.localizedLabel(context),
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
                value: '$poopCount${context.l10n.timesUnit}',
                label: RecordCategory.poop.localizedLabel(context),
              ),
            ),
            const SizedBox(width: AppSpacing.space2),
            Expanded(
              child: _SummaryChip(
                topColor: statusColor(RecordCategory.medication, medCount > 0),
                icon: '💊',
                value:
                    medCount > 0 ? '$medCount${context.l10n.timesUnit}' : '-',
                label: RecordCategory.medication.localizedLabel(context),
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
      badgeLabel = context.l10n.pastLabel;
    } else if (status == AlarmStatus.todayPending) {
      badgeBg = AppColors.warning50;
      badgeText = AppColors.warning600;
      badgeLabel = context.l10n.today;
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
                      : localizedAlarmTypeLabel(context, alarm.type),
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
        final subtitle = _buildSubtitle(context, r);

        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.space2),
          child: GestureDetector(
            onTap: () => context.go('/journal', extra: r),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: cat.bgColor,
                      borderRadius: BorderRadius.circular(AppRadius.radiusMd),
                    ),
                    alignment: Alignment.center,
                    child:
                        Text(cat.emoji, style: const TextStyle(fontSize: 20)),
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cat.localizedLabel(context),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.gray900,
                            )),
                        const SizedBox(height: 2),
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 12, color: AppColors.gray500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space2),
                  if (_hasMedia(r)) ...[
                    const Icon(Icons.photo_library_outlined,
                        size: 14, color: AppColors.gray400),
                    const SizedBox(width: 4),
                  ],
                  Text(
                    time,
                    style:
                        const TextStyle(fontSize: 11, color: AppColors.gray400),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  bool _hasMedia(Record r) {
    final media = r.dataJson?['media'];
    return media is List && media.isNotEmpty;
  }

  String _buildSubtitle(BuildContext context, Record r) =>
      buildRecordSubtitle(context, r);
}

// ─── Stats section header with period toggle ──────────────────────────────────

class _StatsHeader extends ConsumerWidget {
  const _StatsHeader();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final period = ref.watch(statsPeriodProvider);
    return Row(
      children: [
        Text(context.l10n.weekStats,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: AppColors.gray600,
            )),
        const Spacer(),
        _PeriodToggle(
          selected: period,
          onSelect: (v) => ref.read(statsPeriodProvider.notifier).state = v,
        ),
      ],
    );
  }
}

// ─── Weekly bar card (공통: 배변 / 식사 / 음수) ────────────────────────────────

class _WeeklyBarCard extends StatelessWidget {
  final String emoji;
  final String title;
  final Map<DateTime, int> stats;
  final Color todayColor;
  final Color pastColor;
  final String unit;
  final int period;

  const _WeeklyBarCard({
    required this.emoji,
    required this.title,
    required this.stats,
    required this.todayColor,
    required this.pastColor,
    required this.unit,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final days = List.generate(period,
        (i) => DateTime(now.year, now.month, now.day - (period - 1 - i)));
    final counts = days.map((d) => stats[d] ?? 0).toList();
    final total = counts.fold<int>(0, (a, b) => a + b);
    // 실제 입력된 날(count > 0)만 분모로 사용. 0도 포함(0-count 입력일 포함).
    final activeDays = counts.where((c) => c > 0).length;
    final avg = activeDays == 0 ? 0.0 : total / activeDays;
    final maxCount = counts.isEmpty ? 1 : counts.reduce(math.max);
    final barMax = maxCount < 1 ? 1 : maxCount;

    final show7 = period == 7;
    final dayLabels = [
      context.l10n.dayMon,
      context.l10n.dayTue,
      context.l10n.dayWed,
      context.l10n.dayThu,
      context.l10n.dayFri,
      context.l10n.daySat,
      context.l10n.daySun,
    ];

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
              Text('$emoji $title',
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
                  context.l10n.avgPerDay(avg.toStringAsFixed(1), unit),
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
            height: 88,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(period, (i) {
                final d = days[i];
                final count = counts[i];
                final isToday = d.year == now.year &&
                    d.month == now.month &&
                    d.day == now.day;
                final isFuture = d.isAfter(now);
                final barFrac = isFuture ? 0.0 : count / barMax;
                // 바 높이: 막대 영역(62px) 기준으로 비율 적용, 최소 높이 보장
                final barH = math.max(barFrac * 52.0, count > 0 ? 6.0 : 3.0);
                final barColor = isToday
                    ? todayColor
                    : (count > 0 ? pastColor : AppColors.gray200);

                // 30일 뷰: 첫날·오늘·마지막 날만 라벨 표시
                String wLabel;
                if (show7) {
                  wLabel = dayLabels[(d.weekday - 1) % 7];
                } else {
                  wLabel = (isToday || i == 0 || i == period - 1)
                      ? '${d.month}/${d.day}'
                      : '';
                }

                final countText = isFuture ? '' : (count > 0 ? '$count' : '');

                return Expanded(
                  child: Column(
                    children: [
                      // 바 영역: count 라벨 + 바를 하단 정렬
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              countText,
                              style: TextStyle(
                                fontSize: show7 ? 11 : 9,
                                fontWeight: FontWeight.w600,
                                color: isToday ? todayColor : AppColors.gray500,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: show7 ? 4 : 1),
                              child: Container(
                                height: barH,
                                decoration: BoxDecoration(
                                  color: barColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      // 요일/날짜 라벨 영역 (고정 높이)
                      SizedBox(
                        height: 14,
                        child: Text(
                          wLabel,
                          style: TextStyle(
                            fontSize: show7 ? 11 : 8,
                            color: isToday ? todayColor : AppColors.gray400,
                            fontWeight:
                                isToday ? FontWeight.w700 : FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
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
            label: localizedDayCountShort(context, 7),
            value: 7,
            selected: selected,
            onSelect: onSelect,
          ),
          _ToggleBtn(
            label: localizedDayCountShort(context, 30),
            value: 30,
            selected: selected,
            onSelect: onSelect,
          ),
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
  final double? displayWeight;

  const _WeightGraphCard({
    required this.records,
    required this.period,
    required this.displayWeight,
  });

  @override
  Widget build(BuildContext context) {
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
              Text(context.l10n.weightChange,
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
                  displayWeight != null
                      ? '${displayWeight!.toStringAsFixed(2)}kg'
                      : '--kg',
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
          if (records.isNotEmpty)
            SizedBox(
              height: 90,
              child: CustomPaint(
                painter: _WeightLinePainter(
                  records: records,
                  period: period,
                  todayLabel: context.l10n.today,
                ),
                size: Size.infinite,
              ),
            )
          else
            SizedBox(
              height: 90,
              child: Center(
                child: Text(context.l10n.noWeightData,
                    style: const TextStyle(
                        fontSize: 14, color: AppColors.gray400)),
              ),
            ),
          const SizedBox(height: AppSpacing.space2),
          _LegendDot(
              color: AppColors.primary400, label: context.l10n.measuredWeight),
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
  final String todayLabel;

  _WeightLinePainter({
    required this.records,
    required this.period,
    required this.todayLabel,
  });

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
      final label = isToday ? todayLabel : '${dt.month}/${dt.day}';
      final tp = TextPainter(
        text: TextSpan(text: label, style: labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(pts[i].dx - tp.width / 2, chartH + 4));
    }
  }

  @override
  bool shouldRepaint(_WeightLinePainter old) =>
      old.records != records ||
      old.period != period ||
      old.todayLabel != todayLabel;
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🐾', style: TextStyle(fontSize: 36)),
          const SizedBox(height: AppSpacing.space3),
          Text(
            context.l10n.noTodayRecords,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.gray600,
            ),
          ),
          const SizedBox(height: AppSpacing.space2),
          Text(
            context.l10n.homeNoRecordHint,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: AppColors.gray400),
          ),
        ],
      ),
    );
  }
}
