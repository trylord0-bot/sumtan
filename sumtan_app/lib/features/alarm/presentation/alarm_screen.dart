import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/l10n/l10n_extension.dart';
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
    useRootNavigator: true,
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
        child: Text(context.l10n.errorOccurredWithDetail('$e'),
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.gray500)),
      ),
      data: (alarms) {
        if (alarms.isEmpty) {
          return _EmptyAlarmState(petName: pet?.name ?? '반려동물');
        }

        // Split into sections
        final todayPending =
            alarms.where((a) => a.status == AlarmStatus.todayPending).toList();
        todayPending.sort((a, b) {
          final at = a.scheduledAt != null
              ? DateTime.parse(a.scheduledAt!)
              : DateTime(9999);
          final bt = b.scheduledAt != null
              ? DateTime.parse(b.scheduledAt!)
              : DateTime(9999);
          return at.compareTo(bt);
        });

        final upcoming =
            alarms.where((a) => a.status == AlarmStatus.upcoming).toList();
        upcoming.sort((a, b) {
          final at = a.scheduledAt != null
              ? DateTime.parse(a.scheduledAt!)
              : DateTime(9999);
          final bt = b.scheduledAt != null
              ? DateTime.parse(b.scheduledAt!)
              : DateTime(9999);
          return at.compareTo(bt);
        });

        final pastOrDone = alarms
            .where((a) =>
                a.status == AlarmStatus.past || a.status == AlarmStatus.done)
            .toList();
        pastOrDone.sort((a, b) {
          final at = a.scheduledAt != null
              ? DateTime.parse(a.scheduledAt!)
              : DateTime(0);
          final bt = b.scheduledAt != null
              ? DateTime.parse(b.scheduledAt!)
              : DateTime(0);
          return bt.compareTo(at);
        });

        final repeat =
            alarms.where((a) => a.status == AlarmStatus.repeat).toList();
        repeat.sort((a, b) {
          final at = a.repeatTime ?? '99:99';
          final bt = b.repeatTime ?? '99:99';
          return at.compareTo(bt);
        });

        final hasScheduled = todayPending.isNotEmpty ||
            upcoming.isNotEmpty ||
            pastOrDone.isNotEmpty;

        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 160),
          children: [
            // ── 예정된 알림 섹션 ──────────────────────────────────────────
            if (hasScheduled) ...[
              _SectionHeader(title: context.l10n.scheduledAlarms),
              ...todayPending.map((a) => AlarmListItemPending(alarm: a)),
              ...upcoming.map((a) => AlarmListItem(alarm: a)),
              PastAlarmsSection(alarms: pastOrDone),
              const SizedBox(height: AppSpacing.space4),
            ],

            // ── 반복 알림 섹션 ────────────────────────────────────────────
            if (repeat.isNotEmpty) ...[
              _SectionHeader(title: context.l10n.repeatAlarm),
              ...repeat.map((a) => AlarmListItem(alarm: a)),
            ],

            // ── 스와이프 힌트 ─────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.arrow_back,
                      size: 12, color: AppColors.gray400),
                  const SizedBox(width: 4),
                  Text(
                    context.l10n.swipeToDelete,
                    style:
                        const TextStyle(fontSize: 11, color: AppColors.gray400),
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
            Text(context.l10n.noAlarms, style: AppTypography.heading3),
            const SizedBox(height: AppSpacing.space2),
            Text(
              context.l10n.alarmEmptyDesc(petName),
              style: AppTypography.bodySm.copyWith(color: AppColors.gray500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
