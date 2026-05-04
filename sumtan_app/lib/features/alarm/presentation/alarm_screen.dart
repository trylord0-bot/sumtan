import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_typography.dart';
import '../../pet/provider/pet_provider.dart';
import '../data/alarm_model.dart';
import '../provider/alarm_provider.dart';
import 'widgets/alarm_list_item.dart';
import 'widgets/alarm_list_item_pending.dart';
import 'widgets/alarm_type_selector.dart';
import 'widgets/past_alarms_section.dart';

// Called from router.dart when center FAB is tapped
void showAlarmAddSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    // outerContext = context here (main scaffold) so the form sheet
    // can be pushed on the main navigator after the type selector closes.
    builder: (_) => AlarmTypeSelector(outerContext: context),
  );
}

class AlarmScreen extends ConsumerWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alarmsAsync = ref.watch(alarmListProvider);
    final pet = ref.watch(selectedPetProvider);

    return alarmsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Text('오류가 발생했어요\n$e',
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.gray500)),
      ),
      data: (alarms) {
        if (alarms.isEmpty) {
          return _EmptyAlarmState(petName: pet?.name ?? '반려동물');
        }

        // Split into sections
        final todayPending = alarms
            .where((a) => a.status == AlarmStatus.todayPending)
            .toList();
        final upcoming = alarms
            .where((a) => a.status == AlarmStatus.upcoming)
            .toList();
        final pastOrDone = alarms
            .where((a) =>
                a.status == AlarmStatus.past || a.status == AlarmStatus.done)
            .toList();
        final repeat = alarms
            .where((a) => a.status == AlarmStatus.repeat)
            .toList();

        final hasScheduled = todayPending.isNotEmpty ||
            upcoming.isNotEmpty ||
            pastOrDone.isNotEmpty;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 160),
          children: [
            // ── 예정된 알림 섹션 ──────────────────────────────────────────
            if (hasScheduled) ...[
              _SectionHeader(title: '예정된 알림'),
              ...todayPending.map((a) => AlarmListItemPending(alarm: a)),
              ...upcoming.map((a) => AlarmListItem(alarm: a)),
              PastAlarmsSection(alarms: pastOrDone),
              const SizedBox(height: AppSpacing.space4),
            ],

            // ── 반복 알림 섹션 ────────────────────────────────────────────
            if (repeat.isNotEmpty) ...[
              _SectionHeader(title: '반복 알림'),
              ...repeat.map((a) => AlarmListItem(alarm: a)),
            ],

            // ── 스와이프 힌트 ─────────────────────────────────────────────
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, size: 12, color: AppColors.gray400),
                  SizedBox(width: 4),
                  Text(
                    '스와이프하면 삭제할 수 있어요',
                    style: TextStyle(fontSize: 11, color: AppColors.gray400),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

// ── Section header ─────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: AppColors.gray400,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Divider(
              color: AppColors.gray200,
              height: 1,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Empty state ───────────────────────────────────────────────────────────────

class _EmptyAlarmState extends ConsumerWidget {
  final String petName;
  const _EmptyAlarmState({required this.petName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.space8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🐾', style: TextStyle(fontSize: 52)),
            const SizedBox(height: AppSpacing.space3),
            Text('등록된 알림이 없네요', style: AppTypography.heading3),
            const SizedBox(height: AppSpacing.space2),
            Text(
              '$petName는 오늘도 건강하게 지내봐요!\n아래 알림 추가 버튼을 눌러 시작해보세요.',
              style: AppTypography.bodySm.copyWith(color: AppColors.gray500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
