import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/l10n/l10n_extension.dart';
import '../../../app/l10n/generated/app_localizations.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../features/alarm/provider/alarm_provider.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../features/record/provider/record_provider.dart';
import '../provider/export_provider.dart';
import '../provider/import_provider.dart';
import '../provider/purchase_provider.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _notifEnabled = true;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 40),
        children: [
          // ── 알림 ──────────────────────────────────────────────────────────
          _SectionLabel(l10n.settingsNotifications),
          _SettingsCard(rows: [
            _SettingsRow(
              iconBg: AppColors.primary50,
              icon: '🔔',
              title: l10n.settingsPushNotifications,
              sub: l10n.settingsPushNotificationsSub,
              trailing: Switch(
                value: _notifEnabled,
                onChanged: (v) => setState(() => _notifEnabled = v),
                activeThumbColor: AppColors.primary400,
                activeTrackColor: AppColors.primary200,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ]),

          // ── 데이터 관리 ───────────────────────────────────────────────────
          _SectionLabel(l10n.settingsData),
          _SettingsCard(rows: [
            _SettingsRow(
              iconBg: const Color(0xFFFFFBEB),
              icon: '📤',
              title: l10n.settingsExport,
              sub: l10n.settingsExportSub,
              onTap: () => _showExportSheet(context),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFEFF6FF),
              icon: '📥',
              title: l10n.settingsImport,
              sub: l10n.settingsImportSub,
              onTap: _startImport,
            ),
          ]),

          // ── 앱 정보 ───────────────────────────────────────────────────────
          _SectionLabel(l10n.settingsAppInfo),
          _SettingsCard(rows: [
            _SettingsRow(
              iconBg: AppColors.gray100,
              icon: '📱',
              title: l10n.settingsVersion,
              trailing: const Text(
                '1.0.0',
                style: TextStyle(
                  fontSize: 13,
                  color: AppColors.gray400,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFF5F3FF),
              icon: '📋',
              title: l10n.settingsPrivacy,
              trailing: const Icon(Icons.chevron_right,
                  size: 16, color: AppColors.gray400),
              onTap: () => context.push('/privacy-policy'),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFFFF7ED),
              icon: '📬',
              title: l10n.settingsFeedback,
              trailing: const Icon(Icons.chevron_right,
                  size: 16, color: AppColors.gray400),
              onTap: () async {
                final Uri emailUri = Uri(
                  scheme: 'mailto',
                  path: 'lunlu.co.kr@gmail.com',
                  queryParameters: {
                    'subject': l10n.settingsFeedbackSubject,
                  },
                );
                try {
                  final launched = await launchUrl(
                    emailUri,
                    mode: LaunchMode.externalApplication,
                  );
                  if (!launched && context.mounted) {
                    showTopToast(context, context.l10n.settingsEmailAppMissing);
                  }
                } catch (e) {
                  if (context.mounted) {
                    showTopToast(context, context.l10n.settingsEmailAppMissing);
                  }
                }
              },
            ),
          ]),
        ],
      ),
    );
  }

  void _showExportSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _ExportSheet(),
    );
  }

  Future<void> _startImport() async {
    final l10n = context.l10n;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.settingsImport),
        content: Text(l10n.settingsImportConfirmBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.commonCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              l10n.settingsImportAction,
              style: const TextStyle(color: AppColors.danger600),
            ),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    final picked = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['zip'],
    );
    final path = picked?.files.single.path;
    if (path == null) return;

    if (!mounted) return;
    _showProgressDialog(
      context: context,
      title: l10n.settingsImporting,
      mode: _ProgressMode.import,
    );

    await ref.read(importProvider.notifier).startImport(path);
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).pop();

    final state = ref.read(importProvider);
    if (state.status == ImportStatus.success) {
      _invalidateAllData();
      showTopToast(context, l10n.settingsImportSuccess);
      context.go('/');
    } else {
      showTopToast(context,
          _friendlyError(state.errorMessage, l10n.settingsImportFailed));
    }
    ref.read(importProvider.notifier).reset();
  }

  void _invalidateAllData() {
    ref.invalidate(petsProvider);
    ref.invalidate(selectedPetIdProvider);
    ref.invalidate(todayRecordsProvider);
    ref.invalidate(recentRecordsProvider);
    ref.invalidate(selectedDateRecordsProvider);
    ref.invalidate(monthRecordsProvider);
    ref.invalidate(lastRecordProvider);
    ref.invalidate(weightHistoryProvider);
    ref.invalidate(weeklyPoopStatsProvider);
    ref.invalidate(weeklyMealStatsProvider);
    ref.invalidate(weeklyWaterStatsProvider);
    ref.invalidate(alarmListProvider);
  }
}

// ── Section label ─────────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 20, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: AppColors.gray400,
          letterSpacing: 0.7,
        ),
      ),
    );
  }
}

// ── Settings card ─────────────────────────────────────────────────────────────

class _SettingsCard extends StatelessWidget {
  final List<Widget> rows;
  const _SettingsCard({required this.rows});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray200),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          for (int i = 0; i < rows.length; i++) ...[
            rows[i],
            if (i < rows.length - 1)
              const Divider(height: 1, thickness: 1, color: AppColors.gray100),
          ],
        ],
      ),
    );
  }
}

// ── Settings row ─────────────────────────────────────────────────────────────

class _SettingsRow extends StatelessWidget {
  final Color iconBg;
  final String icon;
  final String title;
  final String? sub;
  final Widget? trailing;
  final VoidCallback? onTap;

  const _SettingsRow({
    required this.iconBg,
    required this.icon,
    required this.title,
    this.sub,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(icon, style: const TextStyle(fontSize: 16)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.gray900,
                    ),
                  ),
                  if (sub != null) ...[
                    const SizedBox(height: 1),
                    Text(
                      sub!,
                      style: const TextStyle(
                          fontSize: 11, color: AppColors.gray400),
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}

// ── Data export bottom sheet ──────────────────────────────────────────────────

class _ExportSheet extends ConsumerStatefulWidget {
  const _ExportSheet();

  @override
  ConsumerState<_ExportSheet> createState() => _ExportSheetState();
}

class _ExportSheetState extends ConsumerState<_ExportSheet> {
  bool _exporting = false;

  @override
  Widget build(BuildContext context) {
    final purchaseState = ref.watch(purchaseProvider);
    final l10n = context.l10n;

    ref.listen<PurchaseState>(purchaseProvider, (_, next) {
      if (!mounted) return;
      if (next.status == IapStatus.error) {
        showTopToast(
            context, next.errorMessage ?? context.l10n.settingsPurchaseFailed);
        ref.read(purchaseProvider.notifier).reset();
      }
    });

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 36),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Handle
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 18),
                decoration: BoxDecoration(
                  color: AppColors.gray300,
                  borderRadius: BorderRadius.circular(9999),
                ),
              ),
            ),
            if (purchaseState.isUnlocked)
              ..._buildUnlockedContent()
            else
              ..._buildLockedContent(purchaseState, l10n),
          ],
        ),
      ),
    );
  }

  // ── 잠금 해제 전 UI ─────────────────────────────────────────────────────────

  List<Widget> _buildLockedContent(PurchaseState ps, AppLocalizations l10n) {
    final isBusy = ps.status == IapStatus.loading;
    final notAvailable = ps.status == IapStatus.notAvailable;
    final priceLabel = ps.product?.price ?? '3,000원';

    return [
      Text(
        '📤 ${l10n.settingsExportTitle}',
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: AppColors.gray900,
        ),
      ),
      const SizedBox(height: 14),

      // 혜택 카드
      Container(
        decoration: BoxDecoration(
          color: AppColors.primary50,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary200),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.settingsExportBenefitTitle,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary800,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            for (final item in [
              l10n.settingsExportBenefitPets,
              l10n.settingsExportBenefitRecords,
              l10n.settingsExportBenefitMedia,
            ])
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      size: 15,
                      color: AppColors.primary500,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item,
                      style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.gray700,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),

      const SizedBox(height: 20),

      if (notAvailable)
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.gray100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            l10n.settingsStoreUnavailable,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.gray500,
              height: 1.55,
            ),
          ),
        )
      else
        SizedBox(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary400,
              foregroundColor: AppColors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed: isBusy
                ? null
                : () => ref.read(purchaseProvider.notifier).buyExportUnlock(),
            child: isBusy
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.white,
                    ),
                  )
                : Text(
                    l10n.settingsPayAndExport(priceLabel),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ),
        ),

      const SizedBox(height: 8),

      SizedBox(
        height: 44,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.gray100,
            foregroundColor: AppColors.gray600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () => Navigator.pop(context),
          child: Text(
            l10n.commonCancel,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ];
  }

  // ── 잠금 해제 후 UI ─────────────────────────────────────────────────────────

  List<Widget> _buildUnlockedContent() {
    final l10n = context.l10n;
    return [
      Row(
        children: [
          Text(
            '📤 ${l10n.settingsExportTitle}',
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: AppColors.gray900,
            ),
          ),
          const SizedBox(width: 8),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          //   decoration: BoxDecoration(
          //     color: AppColors.primary100,
          //     borderRadius: BorderRadius.circular(99),
          //   ),
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       const Icon(Icons.lock_open,
          //           size: 11, color: AppColors.primary700),
          //       const SizedBox(width: 3),
          //       Text(
          //         l10n.settingsUnlocked,
          //         style: const TextStyle(
          //           fontSize: 11,
          //           fontWeight: FontWeight.w600,
          //           color: AppColors.primary700,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      const SizedBox(height: 8),
      Text(
        l10n.settingsExportUnlockedBody,
        style: const TextStyle(
            fontSize: 13, color: AppColors.gray500, height: 1.65),
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary400,
            foregroundColor: AppColors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: _exporting ? null : _startExport,
          child: Text(
            _exporting ? l10n.settingsExporting : l10n.settingsExportZip,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      const SizedBox(height: 8),
      SizedBox(
        height: 44,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.gray100,
            foregroundColor: AppColors.gray600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () => Navigator.pop(context),
          child: Text(
            l10n.commonCancel,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ];
  }

  // ── 내보내기 실행 ───────────────────────────────────────────────────────────

  Future<void> _startExport() async {
    final l10n = context.l10n;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.settingsExportTitle),
        content: Text(l10n.settingsExportConfirmBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.commonCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.settingsExportAction),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() => _exporting = true);
    if (!mounted) return;
    _showProgressDialog(
      context: context,
      title: l10n.settingsExportTitle,
      mode: _ProgressMode.export,
    );

    await ref.read(exportProvider.notifier).startExport();
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).pop();

    final state = ref.read(exportProvider);
    if (state.status == ExportStatus.success) {
      // 인메모리 결제 플래그 초기화 — 다음 내보내기 시 재결제 필요
      await ref.read(purchaseProvider.notifier).resetUnlock();
      if (!mounted) return;
      showTopToast(context, l10n.settingsExportSuccess);
      Navigator.pop(context);
    } else {
      showTopToast(context,
          _friendlyError(state.errorMessage, l10n.settingsExportFailed));
    }
    ref.read(exportProvider.notifier).reset();
    if (mounted) setState(() => _exporting = false);
  }
}

enum _ProgressMode { export, import }

void _showProgressDialog({
  required BuildContext context,
  required String title,
  required _ProgressMode mode,
}) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => _BackupProgressDialog(title: title, mode: mode),
  );
}

class _BackupProgressDialog extends ConsumerWidget {
  final String title;
  final _ProgressMode mode;

  const _BackupProgressDialog({
    required this.title,
    required this.mode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final progress = mode == _ProgressMode.export
        ? ref.watch(exportProvider).progress
        : ref.watch(importProvider).progress;
    final message = mode == _ProgressMode.export
        ? ref.watch(exportProvider).message
        : ref.watch(importProvider).message;

    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(value: progress <= 0 ? null : progress),
          const SizedBox(height: 14),
          Text(
            message.isEmpty ? l10n.commonLoading : message,
            style: const TextStyle(fontSize: 13, color: AppColors.gray600),
          ),
          const SizedBox(height: 4),
          Text(
            l10n.commonPercent('${(progress * 100).round()}'),
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 12, color: AppColors.gray400),
          ),
        ],
      ),
    );
  }
}

String _friendlyError(String? message, String fallback) {
  if (message == null || message.isEmpty) return fallback;
  return message
      .replaceFirst('Exception: ', '')
      .replaceFirst('내보내기 실패: Exception: ', '')
      .replaceFirst('가져오기 실패: Exception: ', '');
}
