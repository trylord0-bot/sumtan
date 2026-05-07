import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../features/record/provider/record_provider.dart';
import '../../../features/record/data/record_model.dart';
import '../../../shared/constants/category_constants.dart';
import '../../../core/utils/date_utils.dart' as du;

class JournalScreen extends ConsumerWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      backgroundColor: AppColors.creamBg,
      body: Column(
        children: [
          _CalendarSection(),
          Divider(height: 1, color: AppColors.gray200),
          Expanded(child: _EventList()),
        ],
      ),
    );
  }
}

// ─── 캘린더 (고정) ────────────────────────────────────────────────────────────
class _CalendarSection extends ConsumerStatefulWidget {
  const _CalendarSection();

  @override
  ConsumerState<_CalendarSection> createState() => _CalendarSectionState();
}

class _CalendarSectionState extends ConsumerState<_CalendarSection> {
  @override
  Widget build(BuildContext context) {
    final selectedDate = ref.watch(selectedDateProvider);
    final monthRecordsAsync = ref.watch(monthRecordsProvider);

    final dotsByDate = <String, Set<String>>{};
    monthRecordsAsync.whenData((records) {
      for (final r in records) {
        final key = r.recordedAt.substring(0, 10);
        dotsByDate.putIfAbsent(key, () => {}).add(r.category);
      }
    });

    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _MonthHeader(
            date: selectedDate,
            onPrev: () {
              final d = selectedDate;
              ref.read(selectedDateProvider.notifier).state =
                  DateTime(d.year, d.month - 1, 1);
            },
            onNext: () {
              final d = selectedDate;
              ref.read(selectedDateProvider.notifier).state =
                  DateTime(d.year, d.month + 1, 1);
            },
          ),
          const _WeekdayRow(),
          _DaysGrid(
            selectedDate: selectedDate,
            dotsByDate: dotsByDate,
            onSelect: (date) {
              ref.read(selectedDateProvider.notifier).state = date;
            },
          ),
          const SizedBox(height: AppSpacing.space2),
        ],
      ),
    );
  }
}

class _MonthHeader extends StatelessWidget {
  final DateTime date;
  final VoidCallback onPrev;
  final VoidCallback onNext;

  const _MonthHeader({
    required this.date,
    required this.onPrev,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4, vertical: AppSpacing.space3,
      ),
      child: Row(
        children: [
          _NavBtn(icon: Icons.chevron_left, onTap: onPrev),
          const Spacer(),
          Text(
            du.formatMonthYear(date),
            style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700,
              color: AppColors.primary900,
            ),
          ),
          const Spacer(),
          _NavBtn(icon: Icons.chevron_right, onTap: onNext),
        ],
      ),
    );
  }
}

class _NavBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _NavBtn({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30, height: 30,
        decoration: const BoxDecoration(
          color: AppColors.primary50,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: AppColors.primary900),
      ),
    );
  }
}

class _WeekdayRow extends StatelessWidget {
  static const _days = ['일', '월', '화', '수', '목', '금', '토'];

  const _WeekdayRow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space4),
      child: Row(
        children: _days.asMap().entries.map((e) {
          final Color color = e.key == 0
              ? const Color(0xFFEF4444)
              : e.key == 6
                  ? const Color(0xFF3B82F6)
                  : AppColors.gray400;
          return Expanded(
            child: Center(
              child: Text(e.value, style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w600, color: color,
              )),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _DaysGrid extends StatelessWidget {
  final DateTime selectedDate;
  final Map<String, Set<String>> dotsByDate;
  final ValueChanged<DateTime> onSelect;

  const _DaysGrid({
    required this.selectedDate,
    required this.dotsByDate,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final year = selectedDate.year;
    final month = selectedDate.month;
    final firstDay = DateTime(year, month, 1);
    final startOffset = firstDay.weekday % 7; // 0=Sun
    final daysInMonth = DateTime(year, month + 1, 0).day;
    final totalCells = startOffset + daysInMonth;
    final rows = (totalCells / 7).ceil();
    final today = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(rows, (row) {
          return Row(
            children: List.generate(7, (col) {
              final cellIdx = row * 7 + col;
              final day = cellIdx - startOffset + 1;
              if (day < 1 || day > daysInMonth) {
                return const Expanded(child: SizedBox(height: 48));
              }
              final cellDate = DateTime(year, month, day);
              final dateKey =
                  '${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
              final isToday = today.year == year && today.month == month && today.day == day;
              final isSelected = selectedDate.year == year &&
                  selectedDate.month == month &&
                  selectedDate.day == day;
              final dots = dotsByDate[dateKey] ?? {};

              return Expanded(
                child: GestureDetector(
                  onTap: () => onSelect(cellDate),
                  child: Container(
                    height: 48,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 28, height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected
                                ? (isToday ? AppColors.primary400 : AppColors.primary900)
                                : Colors.transparent,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '$day',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: isSelected || isToday
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: isSelected
                                  ? AppColors.white
                                  : col == 0
                                      ? const Color(0xFFEF4444)
                                      : col == 6
                                          ? const Color(0xFF3B82F6)
                                          : AppColors.gray700,
                            ),
                          ),
                        ),
                        if (dots.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 2,
                              children: dots.take(4).map((cat) {
                                final c = RecordCategoryX.fromString(cat).color;
                                return Container(
                                  width: 4, height: 4,
                                  decoration: BoxDecoration(
                                    color: c, shape: BoxShape.circle,
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}

// ─── 이벤트 리스트 (스크롤) ───────────────────────────────────────────────────
class _EventList extends ConsumerWidget {
  const _EventList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final recordsAsync = ref.watch(selectedDateRecordsProvider);

    return recordsAsync.when(
      data: (records) {
        if (records.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('🐾', style: TextStyle(fontSize: 36)),
                const SizedBox(height: AppSpacing.space3),
                Text(
                  '${du.formatMonthDay(selectedDate)}의 기록이 없어요',
                  style: const TextStyle(fontSize: 15, color: AppColors.gray500),
                ),
              ],
            ),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.space4, AppSpacing.space3,
            AppSpacing.space4, 120,
          ),
          itemCount: records.length + 1,
          separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.space2),
          itemBuilder: (context, idx) {
            if (idx == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.space2),
                child: Text(
                  '${du.formatMonthDay(selectedDate)} 기록 (${records.length}건)',
                  style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w700,
                    color: AppColors.gray500,
                  ),
                ),
              );
            }
            return _EventCard(record: records[idx - 1]);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('오류가 발생했어요')),
    );
  }
}

class _EventCard extends StatelessWidget {
  final Record record;

  const _EventCard({required this.record});

  @override
  Widget build(BuildContext context) {
    final cat = RecordCategoryX.fromString(record.category);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12, horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 38, height: 38,
            decoration: BoxDecoration(
              color: cat.bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(cat.emoji, style: const TextStyle(fontSize: 20)),
          ),
          const SizedBox(width: AppSpacing.space3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cat.label, style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: AppColors.gray900,
                )),
                const SizedBox(height: 2),
                Text(
                  _buildSubtitle(record),
                  style: const TextStyle(fontSize: 12, color: AppColors.gray500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            du.formatTime(record.recordedAtDate),
            style: const TextStyle(fontSize: 11, color: AppColors.gray400),
          ),
        ],
      ),
    );
  }

  String _buildSubtitle(Record r) {
    final d = r.dataJson;
    if (d == null) return r.memo ?? '';
    switch (r.category) {
      case 'poop':       return '${d['type']} · ${d['status']}';
      case 'condition':  return '컨디션 ${d['score']}점';
      case 'medication': return '${d['medicine']} ${d['dose']}';
      case 'weight':     return '${d['weight_kg']}kg';
      case 'meal':
        const mealAmountLabels = {
          'very_little': '매우 적음',
          'little': '적음',
          'normal': '보통',
          'much': '많음',
          'very_much': '매우 많음',
        };
        final mealType = d['meal_type'] as String?;
        final mealAmount = d['meal_amount'] as String?;
        final amountG = d['amount_g'];
        final parts = [
          if (mealType != null && mealType.isNotEmpty) mealType,
          if (mealAmount != null) mealAmountLabels[mealAmount] ?? mealAmount,
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
      default:           return r.memo ?? '';
    }
  }
}
