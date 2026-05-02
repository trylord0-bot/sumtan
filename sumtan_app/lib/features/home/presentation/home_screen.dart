import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../features/record/provider/record_provider.dart';
import '../../../features/record/data/record_model.dart';
import '../../../features/record/presentation/category_bottom_sheet.dart';
import '../../../shared/constants/category_constants.dart';
import '../../../shared/widgets/app_fab.dart';
import '../../../shared/widgets/app_card.dart';
import '../../../core/utils/date_utils.dart' as du;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = ref.watch(selectedPetProvider);
    final todayAsync = ref.watch(todayRecordsProvider);
    final recentAsync = ref.watch(recentRecordsProvider);

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(todayRecordsProvider);
              ref.invalidate(recentRecordsProvider);
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
                        // 인사 섹션
                        _GreetingSection(pet: pet),
                        const SizedBox(height: AppSpacing.space5),

                        // 오늘의 상태 3칸
                        todayAsync.when(
                          data: (records) => _TodaySummaryRow(records: records),
                          loading: () => const _SummarySkeleton(),
                          error: (_, __) => const SizedBox.shrink(),
                        ),
                        const SizedBox(height: AppSpacing.space5),

                        // 오늘의 기록 리스트
                        _SectionHeader(
                          title: '오늘의 기록',
                          linkLabel: '전체 보기',
                          onLink: () {},
                        ),
                        const SizedBox(height: AppSpacing.space3),
                        recentAsync.when(
                          data: (records) => records.isEmpty
                              ? const _EmptyState()
                              : _RecordList(records: records),
                          loading: () => const SizedBox(
                            height: 80,
                            child: Center(child: CircularProgressIndicator()),
                          ),
                          error: (_, __) => const _EmptyState(),
                        ),
                        const SizedBox(height: 120),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // FAB
          Positioned(
            right: AppSpacing.space5,
            bottom: 92,
            child: AppFab(
              onPressed: () => showCategoryBottomSheet(context),
            ),
          ),
        ],
      ),
    );
  }
}

class _GreetingSection extends StatelessWidget {
  final dynamic pet;
  const _GreetingSection({required this.pet});

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
        const SizedBox(height: 6),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.gray900,
            ),
            children: [
              const TextSpan(text: '안녕하세요! '),
              TextSpan(
                text: name,
                style: const TextStyle(color: AppColors.primary600),
              ),
              const TextSpan(text: '는 오늘도 건강한가요? 🐾'),
            ],
          ),
        ),
      ],
    );
  }
}

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
          topColor: poopCount > 0 ? AppColors.categoryPoop : AppColors.gray300,
          icon: '💩',
          value: '$poopCount회',
          label: '배변',
        )),
        const SizedBox(width: AppSpacing.space2),
        Expanded(child: _SummaryChip(
          topColor: weight != null ? AppColors.categoryWeight : AppColors.gray300,
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
                  fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.gray900,
                )),
                const SizedBox(height: 2),
                Text(label, style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.gray400,
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
          fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.gray600,
        )),
        const Spacer(),
        GestureDetector(
          onTap: onLink,
          child: const Text('전체 보기', style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primary600,
          )),
        ),
      ],
    );
  }
}

class _RecordList extends StatelessWidget {
  final List<Record> records;
  const _RecordList({required this.records});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: records.map((r) {
        final cat = RecordCategoryX.fromString(r.category);
        final time = du.formatTime(r.recordedAtDate);
        final subtitle = _buildSubtitle(r);
        return Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.space2),
          child: SizedBox(
            height: 72,
            child: AppCard(
              padding: EdgeInsets.zero,
              onTap: () {},
              child: Row(
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
                  Container(
                    width: 36, height: 36,
                    decoration: BoxDecoration(
                      color: cat.bgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(cat.emoji, style: const TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(width: AppSpacing.space3),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(cat.label, style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w600,
                          color: AppColors.gray900,
                        )),
                        const SizedBox(height: 2),
                        Text(subtitle, style: const TextStyle(
                          fontSize: 13, color: AppColors.gray600,
                        ), maxLines: 1, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: AppSpacing.space3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(time, style: const TextStyle(
                          fontSize: 12, color: AppColors.gray400,
                        )),
                        const SizedBox(height: 2),
                        const Icon(Icons.chevron_right, color: AppColors.gray300, size: 16),
                      ],
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

  String _buildSubtitle(Record r) {
    final d = r.dataJson;
    if (d == null) return r.memo ?? '';
    switch (r.category) {
      case 'poop':
        return '${d['type'] ?? ''} · ${d['status'] ?? ''}';
      case 'condition':
        final score = d['score'];
        final tags = (d['symptoms'] as List?)?.join(', ') ?? '';
        return score != null ? '$score점${tags.isNotEmpty ? ' · $tags' : ''}' : tags;
      case 'medication':
        return '${d['medicine'] ?? ''} ${d['dose'] ?? ''}';
      case 'weight':
        return '${d['weight_kg']}kg';
      default:
        return r.memo ?? '';
    }
  }
}

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
            fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.gray600,
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
