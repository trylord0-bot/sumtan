import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../features/record/provider/record_provider.dart';
import '../../../features/record/data/record_model.dart';
import '../../../features/record/presentation/record_edit_sheet.dart';
import '../../../features/record/presentation/record_subtitle_builder.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../shared/constants/category_constants.dart';
import '../../../core/utils/date_utils.dart' as du;

class JournalScreen extends ConsumerStatefulWidget {
  final Record? initialEditRecord;

  const JournalScreen({super.key, this.initialEditRecord});

  @override
  ConsumerState<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends ConsumerState<JournalScreen> {
  int? _openedInitialRecordId;

  @override
  void didUpdateWidget(covariant JournalScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialEditRecord?.id != widget.initialEditRecord?.id) {
      _openedInitialRecordId = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final initialRecord = widget.initialEditRecord;
    final initialRecordId = initialRecord?.id;
    if (initialRecord != null && _openedInitialRecordId != initialRecordId) {
      _openedInitialRecordId = initialRecordId;
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (!mounted) return;
        ref.read(selectedDateProvider.notifier).state =
            initialRecord.recordedAtDate;
        await showRecordEditSheet(context, record: initialRecord);
      });
    }

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
  late PageController _pageController;

  // page index = year * 12 + (month - 1)
  static int _dateToPage(DateTime d) => d.year * 12 + d.month - 1;
  static DateTime _pageToDate(int p) => DateTime(p ~/ 12, p % 12 + 1, 1);

  static int _rowsForMonth(DateTime d) {
    final offset = DateTime(d.year, d.month, 1).weekday % 7;
    final days = DateTime(d.year, d.month + 1, 0).day;
    return ((offset + days) / 7).ceil();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: _dateToPage(ref.read(selectedDateProvider)));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _showMonthYearPicker(
      BuildContext context, DateTime current) async {
    final selected = await showModalBottomSheet<DateTime>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => _MonthYearPickerSheet(initialDate: current),
    );
    if (selected != null) {
      ref.read(selectedDateProvider.notifier).state =
          DateTime(selected.year, selected.month, 1);
    }
  }

  Future<void> _showFilterSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => const _CategoryFilterSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedDate = ref.watch(selectedDateProvider);
    final monthRecordsAsync = ref.watch(monthRecordsProvider);
    final enabledCategories = ref.watch(categoryFilterProvider);

    // 외부 변경(오늘 버튼, 연월 팝업 등)에 반응해 PageView를 애니메이션으로 이동
    ref.listen<DateTime>(selectedDateProvider, (_, next) {
      final newPage = _dateToPage(next);
      final currentPage = _pageController.page?.round() ?? newPage;
      if (newPage != currentPage) {
        _pageController.animateToPage(
          newPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
        );
      }
    });

    final dotsByDate = <String, Set<String>>{};
    monthRecordsAsync.whenData((records) {
      for (final r in records) {
        final cat = RecordCategoryX.fromString(r.category);
        if (!enabledCategories.contains(cat)) continue;
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
            onPrev: () => _pageController.previousPage(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
            ),
            onNext: () => _pageController.nextPage(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
            ),
            onDateTap: () => _showMonthYearPicker(context, selectedDate),
            onTodayTap: () {
              ref.read(selectedDateProvider.notifier).state = DateTime.now();
            },
            onFilterTap: () => _showFilterSheet(context),
          ),
          const _WeekdayRow(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            height: _rowsForMonth(selectedDate) * 48.0,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (page) {
                final newMonth = _pageToDate(page);
                final cur = ref.read(selectedDateProvider);
                if (cur.year == newMonth.year && cur.month == newMonth.month) {
                  return;
                }
                final maxDay =
                    DateTime(newMonth.year, newMonth.month + 1, 0).day;
                ref.read(selectedDateProvider.notifier).state = DateTime(
                  newMonth.year,
                  newMonth.month,
                  cur.day <= maxDay ? cur.day : 1,
                );
              },
              itemBuilder: (_, page) {
                return _DaysGrid(
                  selectedDate: selectedDate,
                  displayMonth: _pageToDate(page),
                  dotsByDate: dotsByDate,
                  onSelect: (date) =>
                      ref.read(selectedDateProvider.notifier).state = date,
                );
              },
            ),
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
  final VoidCallback onDateTap;
  final VoidCallback onTodayTap;
  final VoidCallback onFilterTap;

  const _MonthHeader({
    required this.date,
    required this.onPrev,
    required this.onNext,
    required this.onDateTap,
    required this.onTodayTap,
    required this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.space4,
        vertical: AppSpacing.space3,
      ),
      child: Row(
        children: [
          _NavBtn(icon: Icons.chevron_left, onTap: onPrev),
          const Spacer(),
          GestureDetector(
            onTap: onTodayTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              margin: const EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(AppRadius.radiusFull),
                border: Border.all(color: AppColors.primary200, width: 1),
              ),
              child: Text(
                context.l10n.today,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary700,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onDateTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  du.formatMonthYear(date),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary900,
                  ),
                ),
                const SizedBox(width: 2),
                const Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: AppColors.primary900,
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.space2),
          GestureDetector(
            onTap: onFilterTap,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: AppColors.primary50,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.filter_list,
                  size: 18, color: AppColors.primary900),
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
        width: 30,
        height: 30,
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
  const _WeekdayRow();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final days = [
      l10n.daySun,
      l10n.dayMon,
      l10n.dayTue,
      l10n.dayWed,
      l10n.dayThu,
      l10n.dayFri,
      l10n.daySat,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.space4),
      child: Row(
        children: days.asMap().entries.map((e) {
          final Color color = e.key == 0
              ? const Color(0xFFEF4444)
              : e.key == 6
                  ? const Color(0xFF3B82F6)
                  : AppColors.gray400;
          return Expanded(
            child: Center(
              child: Text(e.value,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: color,
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
  final DateTime displayMonth;
  final Map<String, Set<String>> dotsByDate;
  final ValueChanged<DateTime> onSelect;

  const _DaysGrid({
    required this.selectedDate,
    required this.displayMonth,
    required this.dotsByDate,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final year = displayMonth.year;
    final month = displayMonth.month;
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
              final isToday = today.year == year &&
                  today.month == month &&
                  today.day == day;
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
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected
                                ? (isToday
                                    ? AppColors.primary400
                                    : AppColors.primary900)
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
                              runSpacing: 2,
                              children: dots.map((cat) {
                                final c = RecordCategoryX.fromString(cat).color;
                                return Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: c,
                                    shape: BoxShape.circle,
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
    final enabledCategories = ref.watch(categoryFilterProvider);

    return recordsAsync.when(
      data: (records) {
        final filtered = records
            .where((r) => enabledCategories
                .contains(RecordCategoryX.fromString(r.category)))
            .toList()
          ..sort((a, b) => b.recordedAtDate.compareTo(a.recordedAtDate));
        if (filtered.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('🐾', style: TextStyle(fontSize: 36)),
                const SizedBox(height: AppSpacing.space3),
                Text(
                  context.l10n
                      .noRecordsForDate(du.formatMonthDay(selectedDate)),
                  style:
                      const TextStyle(fontSize: 15, color: AppColors.gray500),
                ),
              ],
            ),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.space4,
            AppSpacing.space3,
            AppSpacing.space4,
            120,
          ),
          itemCount: filtered.length + 1,
          separatorBuilder: (_, __) =>
              const SizedBox(height: AppSpacing.space2),
          itemBuilder: (context, idx) {
            if (idx == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.space2),
                child: Text(
                  context.l10n.recordsForDate(
                    du.formatMonthDay(selectedDate),
                    '${filtered.length}',
                  ),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray500,
                  ),
                ),
              );
            }
            return _EventCard(record: filtered[idx - 1]);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => Center(child: Text(context.l10n.errorOccurred)),
    );
  }
}

class _EventCard extends ConsumerWidget {
  final Record record;

  const _EventCard({required this.record});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cat = RecordCategoryX.fromString(record.category);
    return Dismissible(
      key: Key('record_${record.id ?? record.recordedAt}_${record.category}'),
      direction: DismissDirection.endToStart,
      background: const _DeleteBackground(),
      confirmDismiss: (_) async {
        return await showDialog<bool>(
              context: context,
              builder: (ctx) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                title: Text(context.l10n.deleteRecordConfirm,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w700)),
                content: Text(context.l10n.deleteConfirmBody),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(ctx, false),
                    child: Text(context.l10n.commonCancel),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(ctx, true),
                    style: TextButton.styleFrom(
                        foregroundColor: AppColors.danger600),
                    child: Text(context.l10n.deleteConfirmOk),
                  ),
                ],
              ),
            ) ??
            false;
      },
      onDismissed: (_) async {
        final id = record.id;
        if (id == null) return;
        await ref.read(recordNotifierProvider.notifier).remove(id);
        _invalidateRecords(ref);
        if (context.mounted) {
          showTopToast(context, context.l10n.recordDeleted);
        }
      },
      child: GestureDetector(
        onTap: () => showRecordEditSheet(context, record: record),
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
                child: Text(cat.emoji, style: const TextStyle(fontSize: 20)),
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
                      _buildSubtitle(context, record),
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.gray500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.space2),
              if (_hasMedia(record)) ...[
                const Icon(Icons.photo_library_outlined,
                    size: 14, color: AppColors.gray400),
                const SizedBox(width: 4),
              ],
              Text(
                du.formatTime(record.recordedAtDate),
                style: const TextStyle(fontSize: 11, color: AppColors.gray400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _hasMedia(Record r) {
    final media = r.dataJson?['media'];
    return media is List && media.isNotEmpty;
  }

  void _invalidateRecords(WidgetRef ref) {
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    ref.invalidate(weightHistoryProvider);
    ref.invalidate(weeklyPoopStatsProvider);
    ref.invalidate(weeklyMealStatsProvider);
    ref.invalidate(weeklyWaterStatsProvider);
  }

  String _buildSubtitle(BuildContext context, Record r) =>
      buildRecordSubtitle(context, r);
}

class _MonthYearPickerSheet extends StatefulWidget {
  final DateTime initialDate;

  const _MonthYearPickerSheet({required this.initialDate});

  @override
  State<_MonthYearPickerSheet> createState() => _MonthYearPickerSheetState();
}

class _MonthYearPickerSheetState extends State<_MonthYearPickerSheet> {
  late PageController _pageController;
  late int _year;

  @override
  void initState() {
    super.initState();
    _year = widget.initialDate.year;
    // year 값을 page index로 직접 사용
    _pageController = PageController(initialPage: _year);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final initYear = widget.initialDate.year;
    final initMonth = widget.initialDate.month;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.space4,
        AppSpacing.space3,
        AppSpacing.space4,
        AppSpacing.space8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 36,
            height: 4,
            margin: const EdgeInsets.only(bottom: AppSpacing.space4),
            decoration: BoxDecoration(
              color: AppColors.gray300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _NavBtn(
                icon: Icons.chevron_left,
                onTap: () => _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
              ),
              const SizedBox(width: AppSpacing.space6),
              Text(
                '$_year',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary900,
                ),
              ),
              const SizedBox(width: AppSpacing.space6),
              _NavBtn(
                icon: Icons.chevron_right,
                onTap: () => _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.space4),
          LayoutBuilder(
            builder: (_, constraints) {
              final itemWidth =
                  (constraints.maxWidth - 2 * AppSpacing.space2) / 3;
              final itemHeight = itemWidth / 2.4;
              final gridHeight = 4 * itemHeight + 3 * AppSpacing.space2;
              return SizedBox(
                height: gridHeight,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (page) => setState(() => _year = page),
                  itemBuilder: (_, page) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2.4,
                        crossAxisSpacing: AppSpacing.space2,
                        mainAxisSpacing: AppSpacing.space2,
                      ),
                      itemCount: 12,
                      itemBuilder: (_, i) {
                        final month = i + 1;
                        final isSelected =
                            page == initYear && month == initMonth;
                        final isToday = now.year == page && now.month == month;
                        final label =
                            DateFormat('MMM', Intl.defaultLocale ?? 'en')
                                .format(DateTime(2000, month));
                        return GestureDetector(
                          onTap: () =>
                              Navigator.pop(context, DateTime(page, month)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.primary900
                                  : AppColors.primary50,
                              borderRadius:
                                  BorderRadius.circular(AppRadius.radiusMd),
                              border: isToday && !isSelected
                                  ? Border.all(
                                      color: AppColors.primary400,
                                      width: 1.5,
                                    )
                                  : null,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              label,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: isSelected
                                    ? AppColors.white
                                    : AppColors.primary900,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CategoryFilterSheet extends ConsumerStatefulWidget {
  const _CategoryFilterSheet();

  @override
  ConsumerState<_CategoryFilterSheet> createState() =>
      _CategoryFilterSheetState();
}

class _CategoryFilterSheetState extends ConsumerState<_CategoryFilterSheet> {
  late Set<RecordCategory> _selected;

  List<RecordCategory> _availableCategories(String? species) {
    final categories = <RecordCategory>[
      RecordCategory.poop,
      RecordCategory.condition,
      RecordCategory.medication,
      RecordCategory.weight,
      RecordCategory.meal,
      RecordCategory.water,
      RecordCategory.hospital,
      RecordCategory.grooming,
      RecordCategory.brushing,
      RecordCategory.memo,
      RecordCategory.abnormalSymptom,
    ];
    if (species == 'dog') {
      categories.insert(categories.length - 1, RecordCategory.walk);
    }
    return categories;
  }

  @override
  void initState() {
    super.initState();
    _selected = {...ref.read(categoryFilterProvider)};
  }

  void _toggle(RecordCategory cat) {
    setState(() {
      if (_selected.contains(cat)) {
        _selected.remove(cat);
      } else {
        _selected.add(cat);
      }
    });
  }

  void _selectAll(List<RecordCategory> available) {
    setState(() {
      _selected.addAll(available);
    });
  }

  void _deselectAll() {
    setState(() {
      _selected.clear();
    });
  }

  void _apply() {
    ref.read(categoryFilterProvider.notifier).state = {..._selected};
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final pet = ref.watch(selectedPetProvider);
    final available = _availableCategories(pet?.species);

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.space5,
        0,
        AppSpacing.space5,
        AppSpacing.space5,
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(9999),
              ),
            ),
            Row(
              children: [
                Text(
                  context.l10n.categoryFilter,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.gray900,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close, color: AppColors.gray500),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.space1),
            Row(
              children: [
                _FilterActionBtn(
                  label: context.l10n.selectAll,
                  onTap: () => _selectAll(available),
                ),
                const SizedBox(width: AppSpacing.space2),
                _FilterActionBtn(
                  label: context.l10n.deselectAll,
                  onTap: _deselectAll,
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: AppSpacing.space3),
            Expanded(
              child: ListView.separated(
                itemCount: available.length,
                separatorBuilder: (_, __) => const SizedBox(height: 2),
                itemBuilder: (_, i) {
                  final cat = available[i];
                  final checked = _selected.contains(cat);
                  return _FilterCheckTile(
                    category: cat,
                    checked: checked,
                    onToggle: () => _toggle(cat),
                  );
                },
              ),
            ),
            const SizedBox(height: AppSpacing.space2),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _apply,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary400,
                  foregroundColor: AppColors.white,
                  disabledBackgroundColor: AppColors.gray300,
                  disabledForegroundColor: AppColors.gray500,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  context.l10n.apply,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterActionBtn extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _FilterActionBtn({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(AppRadius.radiusFull),
          border: Border.all(color: AppColors.primary200, width: 1),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: AppColors.primary700,
          ),
        ),
      ),
    );
  }
}

class _FilterCheckTile extends StatelessWidget {
  final RecordCategory category;
  final bool checked;
  final VoidCallback onToggle;

  const _FilterCheckTile({
    required this.category,
    required this.checked,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
          color: checked ? category.bgColor : AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: checked
                ? category.color.withValues(alpha: 0.35)
                : AppColors.gray200,
            width: 1.2,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: category.color.withValues(alpha: 0.15),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(category.emoji, style: const TextStyle(fontSize: 17)),
            ),
            const SizedBox(width: AppSpacing.space3),
            Expanded(
              child: Text(
                category.localizedLabel(context),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: checked ? category.color : AppColors.gray600,
                ),
              ),
            ),
            Icon(
              checked ? Icons.check_box : Icons.check_box_outline_blank,
              size: 22,
              color: checked ? category.color : AppColors.gray400,
            ),
          ],
        ),
      ),
    );
  }
}

class _DeleteBackground extends StatelessWidget {
  const _DeleteBackground();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.danger600,
        borderRadius: BorderRadius.circular(AppRadius.radiusMd),
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: const Text('🗑️', style: TextStyle(fontSize: 22)),
    );
  }
}
