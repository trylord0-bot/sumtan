import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
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
    final pet        = ref.watch(selectedPetProvider);
    final todayAsync = ref.watch(todayRecordsProvider);
    final lastAsync  = ref.watch(lastRecordProvider);
    final weightAsync = ref.watch(weightHistoryProvider);
    final poopAsync  = ref.watch(weeklyPoopStatsProvider);

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(todayRecordsProvider);
          ref.invalidate(lastRecordProvider);
          ref.invalidate(weightHistoryProvider);
          ref.invalidate(weeklyPoopStatsProvider);
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.space4, AppSpacing.space5,
                  AppSpacing.space4, 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _GreetingSection(pet: pet, lastAsync: lastAsync),
                    const SizedBox(height: AppSpacing.space5),

                    _SectionHeader(
                      title: '오늘의 상태',
                      linkLabel: '+ 기록하기',
                      onLink: () async {
                        await showCategoryBottomSheet(context);
                        ref.invalidate(weeklyPoopStatsProvider);
                        ref.invalidate(weightHistoryProvider);
                        ref.invalidate(lastRecordProvider);
                      },
                    ),
                    const SizedBox(height: AppSpacing.space3),

                    todayAsync.when(
                      data: (records) => _TodaySummaryRow(records: records),
                      loading: () => const _SummarySkeleton(),
                      error: (_, __) => const SizedBox.shrink(),
                    ),
                    const SizedBox(height: AppSpacing.space5),

                    _SectionHeader(
                      title: '오늘의 기록',
                      linkLabel: '전체 보기',
                      onLink: () => context.go('/journal'),
                    ),
                    const SizedBox(height: AppSpacing.space3),
                    todayAsync.when(
                      data: (records) {
                        final display = records.reversed.take(4).toList();
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

                    _WeightSection(weightAsync: weightAsync, ref: ref),
                    const SizedBox(height: AppSpacing.space5),

                    _PoopSection(poopAsync: poopAsync),
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
}

// ─── Greeting section ──────────────────────────────────────────────────────────

class _GreetingSection extends StatelessWidget {
  final dynamic pet;
  final AsyncValue<Record?> lastAsync;

  const _GreetingSection({required this.pet, required this.lastAsync});

  @override
  Widget build(BuildContext context) {
    final name = (pet?.name as String?) ?? '반려동물';
    final now  = DateTime.now();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Date row + weather chip
        Row(
          children: [
            Text(
              du.formatDate(now),
              style: const TextStyle(fontSize: 12, color: AppColors.gray500),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: AppColors.primary100, width: 1),
              ),
              child: const Text(
                '☀️ 맑음 18°C',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),

        // Main greeting
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
              const TextSpan(text: '는\n오늘도 건강한가요? 🐾'),
            ],
          ),
        ),
        const SizedBox(height: 6),

        // Last record sub text
        lastAsync.when(
          data: (record) {
            if (record == null) {
              return const Text(
                '아직 기록이 없어요',
                style: TextStyle(fontSize: 12, color: AppColors.gray400),
              );
            }
            final dt  = record.recordedAtDate;
            final now2 = DateTime.now();
            String timeStr;
            if (dt.year == now2.year &&
                dt.month == now2.month &&
                dt.day == now2.day) {
              timeStr = '오늘 ${du.formatTime(dt)}';
            } else {
              timeStr = du.formatMonthDay(dt);
            }
            return Text(
              '마지막 기록 · $timeStr',
              style: const TextStyle(fontSize: 12, color: AppColors.gray400),
            );
          },
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
        ),
      ],
    );
  }
}

// ─── Today summary row ─────────────────────────────────────────────────────────

class _TodaySummaryRow extends StatelessWidget {
  final List<Record> records;
  const _TodaySummaryRow({required this.records});

  @override
  Widget build(BuildContext context) {
    final conditionRecord = records.lastWhere(
      (r) => r.category == 'condition',
      orElse: () => const Record(petId: 0, category: '', recordedAt: '', createdAt: ''),
    );
    final poopCount = records.where((r) => r.category == 'poop').length;
    final weightRecord = records.lastWhere(
      (r) => r.category == 'weight',
      orElse: () => const Record(petId: 0, category: '', recordedAt: '', createdAt: ''),
    );

    final int? condScore = conditionRecord.category.isNotEmpty
        ? (conditionRecord.dataJson?['score'] as num?)?.toInt()
        : null;
    final double? weight = weightRecord.category.isNotEmpty
        ? (weightRecord.dataJson?['weight_kg'] as num?)?.toDouble()
        : null;

    final Color condBarColor;
    final String condIcon;
    final String condValue;
    if (condScore == null) {
      condBarColor = AppColors.gray300;
      condIcon = '⚪';
      condValue = '-';
    } else if (condScore >= 4) {
      condBarColor = AppColors.success400;
      condIcon = '🟢';
      condValue = '$condScore점';
    } else if (condScore >= 3) {
      condBarColor = AppColors.warning400;
      condIcon = '🟡';
      condValue = '$condScore점';
    } else {
      condBarColor = AppColors.danger400;
      condIcon = '🔴';
      condValue = '$condScore점';
    }

    return Row(
      children: [
        Expanded(child: _SummaryChip(
          topColor: condBarColor,
          icon: condIcon,
          value: condValue,
          label: '컨디션',
        )),
        const SizedBox(width: AppSpacing.space2),
        Expanded(child: _SummaryChip(
          topColor: poopCount > 0 ? AppColors.info400 : AppColors.gray300,
          icon: '💩',
          value: '$poopCount회',
          label: '배변',
        )),
        const SizedBox(width: AppSpacing.space2),
        Expanded(child: _SummaryChip(
          topColor: weight != null ? AppColors.warning400 : AppColors.gray300,
          icon: '⚖️',
          value: weight != null ? '${weight.toStringAsFixed(1)}kg' : '-',
          label: '체중',
        )),
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
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.space3, horizontal: AppSpacing.space2,
            ),
            child: Column(
              children: [
                Text(icon, style: const TextStyle(fontSize: 22)),
                const SizedBox(height: 4),
                Text(value, style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.gray900,
                )),
                const SizedBox(height: 2),
                Text(label, style: const TextStyle(
                  fontSize: 12,
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
    return const Row(
      children: [
        Expanded(child: _SummaryChipSkeleton()),
        SizedBox(width: AppSpacing.space2),
        Expanded(child: _SummaryChipSkeleton()),
        SizedBox(width: AppSpacing.space2),
        Expanded(child: _SummaryChipSkeleton()),
      ],
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
        Text(title, style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: AppColors.gray600,
        )),
        const Spacer(),
        GestureDetector(
          onTap: onLink,
          child: Text(linkLabel, style: const TextStyle(
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
        final cat      = RecordCategoryX.fromString(r.category);
        final time     = du.formatTime(r.recordedAtDate);
        final title    = _buildTitle(r);
        final subtitle = _buildSubtitle(r);

        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.space2),
          child: AppCard(
            padding: EdgeInsets.zero,
            onTap: () {},
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Left color bar
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
                  // Icon
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
                      child: Text(cat.emoji, style: const TextStyle(fontSize: 18)),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  // Text column
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title, style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray900,
                          )),
                          if (subtitle.isNotEmpty) ...[
                            const SizedBox(height: 2),
                            Text(subtitle, style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.gray600,
                            ), maxLines: 1, overflow: TextOverflow.ellipsis),
                          ],
                          const SizedBox(height: 2),
                          Text(time, style: const TextStyle(
                            fontSize: 11,
                            color: AppColors.gray400,
                          )),
                        ],
                      ),
                    ),
                  ),
                  // Right arrow
                  const Padding(
                    padding: EdgeInsets.only(right: AppSpacing.space3),
                    child: Center(
                      child: Text('›', style: TextStyle(
                        fontSize: 20,
                        color: AppColors.gray300,
                      )),
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
        final level = score >= 4 ? '좋음' : score >= 3 ? '보통' : '나쁨';
        return '컨디션 $score점 — $level';
      case 'poop':
        final type = d?['type'] as String? ?? '';
        return type.isNotEmpty ? '대변 — $type' : '대변';
      case 'medication':
        final med = d?['medicine'] as String? ?? '';
        return med.isNotEmpty ? med : '투약';
      case 'weight':
        return '체중 기록';
      case 'meal':
        return '식사 기록';
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
        final color  = d['color'] as String? ?? '';
        return [status, color].where((s) => s.isNotEmpty).join(', ');
      case 'condition':
        final tags = (d['symptoms'] as List?)?.join(', ') ?? '';
        return tags.isNotEmpty ? tags : (r.memo ?? '');
      case 'medication':
        final dose = d['dose'] as String? ?? '';
        return dose.isNotEmpty ? '$dose 투여 완료' : (r.memo ?? '');
      case 'weight':
        final kg = d['weight_kg'];
        return kg != null ? '${kg}kg 기록' : '';
      case 'meal':
        return r.memo ?? '';
      default:
        return r.memo ?? '';
    }
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
            const Text('체중 추세', style: TextStyle(
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
          _ToggleBtn(label: '7일', value: 7, selected: selected, onSelect: onSelect),
          _ToggleBtn(label: '30일', value: 30, selected: selected, onSelect: onSelect),
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

    // Find current weight (latest record)
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
          // Card header
          Row(
            children: [
              const Text('⚖️ 체중 변화', style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppColors.gray700,
              )),
              const Spacer(),
              if (currentWeight != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
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
          // Chart
          SizedBox(
            height: 90,
            child: CustomPaint(
              painter: _WeightLinePainter(records: records, period: period),
              size: Size.infinite,
            ),
          ),
          const SizedBox(height: AppSpacing.space2),
          // Legend
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
          width: 8, height: 8,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 11, color: AppColors.gray500)),
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

    // Extract (date, weight) pairs
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

    final chartH = size.height - 20.0; // leave 20px for x labels
    final chartW = size.width;

    // Map data points to canvas coordinates
    final pts = <Offset>[];
    for (int i = 0; i < dataPoints.length; i++) {
      final x = dataPoints.length == 1
          ? chartW / 2
          : chartW * i / (dataPoints.length - 1);
      final y = chartH -
          chartH * (dataPoints[i].value - paddedMin) / totalRange;
      pts.add(Offset(x, y));
    }

    // Gradient fill
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

    // Line
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

    // Data points
    final now = DateTime.now();
    for (int i = 0; i < pts.length; i++) {
      final dt   = dataPoints[i].key;
      final isToday = dt.year == now.year &&
          dt.month == now.month &&
          dt.day == now.day;
      final radius = isToday ? 6.0 : 4.0;

      if (isToday) {
        // Halo
        final haloPaint = Paint()
          ..color = AppColors.primary400.withValues(alpha: 0.2)
          ..style = PaintingStyle.fill;
        canvas.drawCircle(pts[i], 10.0, haloPaint);
      }

      final dotPaint = Paint()
        ..color = AppColors.primary400
        ..style = PaintingStyle.fill;
      canvas.drawCircle(pts[i], radius, dotPaint);

      final innerPaint = Paint()
        ..color = AppColors.white
        ..style = PaintingStyle.fill;
      canvas.drawCircle(pts[i], radius - 1.5, innerPaint);
    }

    // X labels
    const labelStyle = TextStyle(fontSize: 10, color: AppColors.gray400);
    for (int i = 0; i < dataPoints.length; i++) {
      final dt = dataPoints[i].key;
      final isToday = dt.year == now.year &&
          dt.month == now.month &&
          dt.day == now.day;
      final label = isToday ? '오늘' : '${dt.month}/${dt.day}';
      // Only show label for first, last, and today
      final shouldShow = i == 0 || i == dataPoints.length - 1 || isToday;
      if (!shouldShow) continue;

      final tp = TextPainter(
        text: TextSpan(text: label, style: labelStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(
        canvas,
        Offset(pts[i].dx - tp.width / 2, chartH + 4),
      );
    }
  }

  @override
  bool shouldRepaint(_WeightLinePainter old) =>
      old.records != records || old.period != period;
}

// ─── Poop section ──────────────────────────────────────────────────────────────

class _PoopSection extends StatelessWidget {
  final AsyncValue<Map<DateTime, int>> poopAsync;

  const _PoopSection({required this.poopAsync});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          title: '배변 주간 통계',
          linkLabel: '상세 보기',
          onLink: () {},
        ),
        const SizedBox(height: AppSpacing.space3),
        poopAsync.when(
          data: (stats) => _PoopGraphCard(stats: stats),
          loading: () => Container(
            height: 140,
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

class _PoopGraphCard extends StatelessWidget {
  final Map<DateTime, int> stats;

  const _PoopGraphCard({required this.stats});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    // Build last 7 days list (oldest first)
    final days = List.generate(7, (i) {
      final d = DateTime(now.year, now.month, now.day - (6 - i));
      return d;
    });

    final counts = days.map((d) => stats[d] ?? 0).toList();
    final total  = counts.fold<int>(0, (a, b) => a + b);
    final avg    = total / 7;

    final maxCount = counts.isEmpty ? 1 : counts.reduce(math.max);
    final barMax   = maxCount < 1 ? 1 : maxCount;

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
          // Card header
          Row(
            children: [
              const Text('💩 이번 주 배변 횟수', style: TextStyle(
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
                  '평균 ${avg.toStringAsFixed(1)}회/일',
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
          // Bar chart
          SizedBox(
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(7, (i) {
                final d        = days[i];
                final count    = counts[i];
                final isToday  = d.year == now.year &&
                    d.month == now.month &&
                    d.day == now.day;
                final isFuture = d.isAfter(now);
                final barFrac  = isFuture ? 0.0 : (count / barMax);
                final barH     = math.max(barFrac * 56.0, count > 0 ? 8.0 : 4.0);
                final barColor = isToday
                    ? AppColors.primary400
                    : (count > 0 ? AppColors.primary200 : AppColors.gray200);
                final weekdayLabel = dayLabels[(d.weekday - 1) % 7];

                return Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Count label above bar
                      Text(
                        isFuture ? '-' : (count > 0 ? '$count' : ''),
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: isToday
                              ? AppColors.primary500
                              : AppColors.gray500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      // Bar
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
                      // Day label
                      Text(
                        weekdayLabel,
                        style: TextStyle(
                          fontSize: 11,
                          color: isToday
                              ? AppColors.primary500
                              : AppColors.gray400,
                          fontWeight: isToday
                              ? FontWeight.w700
                              : FontWeight.w400,
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

// ─── Empty state ───────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.space8, horizontal: AppSpacing.space5,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200, width: 1.5),
      ),
      child: const Column(
        children: [
          Text('🐾', style: TextStyle(fontSize: 36)),
          SizedBox(height: AppSpacing.space3),
          Text('아직 오늘의 기록이 없어요', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.gray600,
          )),
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
