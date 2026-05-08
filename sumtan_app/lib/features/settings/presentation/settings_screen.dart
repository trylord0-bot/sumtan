import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/widgets/app_toast.dart';
import '../../../features/alarm/provider/alarm_provider.dart';
import '../../../features/pet/provider/pet_provider.dart';
import '../../../features/record/provider/record_provider.dart';
import '../provider/export_provider.dart';
import '../provider/import_provider.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _notifEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.creamBg,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 40),
        children: [
          // ── 알림 ──────────────────────────────────────────────────────────
          const _SectionLabel('알림'),
          _SettingsCard(rows: [
            _SettingsRow(
              iconBg: AppColors.primary50,
              icon: '🔔',
              title: '푸시 알림 허용',
              sub: '기기 알림 권한 설정',
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
          const _SectionLabel('데이터 관리'),
          _SettingsCard(rows: [
            _SettingsRow(
              iconBg: const Color(0xFFFFFBEB),
              icon: '📤',
              title: '데이터 내보내기',
              sub: 'ZIP 파일로 저장',
              onTap: () => _showExportSheet(context),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFEFF6FF),
              icon: '📥',
              title: '데이터 가져오기',
              sub: 'ZIP 파일에서 복원',
              onTap: _startImport,
            ),
          ]),

          // ── 앱 정보 ───────────────────────────────────────────────────────
          const _SectionLabel('앱 정보'),
          _SettingsCard(rows: [
            const _SettingsRow(
              iconBg: AppColors.gray100,
              icon: '📱',
              title: '앱 버전',
              trailing: Text(
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
              title: '개인정보 처리방침',
              trailing: const Icon(Icons.chevron_right, size: 16, color: AppColors.gray400),
              onTap: () => showTopToast(context, '개인정보 처리방침을 준비 중이에요 📋'),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFFFF7ED),
              icon: '📬',
              title: '피드백 보내기',
              trailing: const Icon(Icons.chevron_right, size: 16, color: AppColors.gray400),
              onTap: () async {
                final uri = Uri.parse(
                  'mailto:feedback@sumtan.app?subject=%EB%B0%98%EB%A0%A4%EC%88%A8%ED%83%84%20%ED%94%BC%EB%93%9C%EB%B0%B1',
                );
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  if (context.mounted) {
                    showTopToast(context, '이메일 앱을 찾을 수 없어요');
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
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('데이터 가져오기'),
        content: const Text(
          '기존의 모든 데이터가 삭제되고 백업 파일의 데이터로 교체됩니다.\n\n계속하시겠습니까?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('취소'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(
              '가져오기',
              style: TextStyle(color: AppColors.danger600),
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
      title: '데이터 가져오기',
      mode: _ProgressMode.import,
    );

    await ref.read(importProvider.notifier).startImport(path);
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).pop();

    final state = ref.read(importProvider);
    if (state.status == ImportStatus.success) {
      _invalidateAllData();
      showTopToast(context, '백업 데이터를 복원했어요');
      context.go('/');
    } else {
      showTopToast(context, _friendlyError(state.errorMessage, '가져오기에 실패했어요'));
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
                      style: const TextStyle(fontSize: 11, color: AppColors.gray400),
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
            const Text(
              '📤 데이터 내보내기',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: AppColors.gray900,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '모든 반려동물 정보와 기록을 ZIP 파일로 저장합니다.\n저장된 파일은 언제든 무료로 가져오기 복원할 수 있어요.',
              style: TextStyle(
                fontSize: 13,
                color: AppColors.gray500,
                height: 1.65,
              ),
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
                  _exporting ? '내보내는 중...' : 'ZIP 파일로 내보내기',
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
                child: const Text(
                  '취소',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _startExport() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('데이터 내보내기'),
        content: const Text('모든 반려동물 정보와 기록, 첨부 미디어를 ZIP 파일로 내보냅니다.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('취소'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('내보내기'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    setState(() => _exporting = true);
    if (!mounted) return;
    _showProgressDialog(
      context: context,
      title: '데이터 내보내기',
      mode: _ProgressMode.export,
    );

    await ref.read(exportProvider.notifier).startExport();
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).pop();

    final state = ref.read(exportProvider);
    if (state.status == ExportStatus.success) {
      showTopToast(context, '백업 파일을 공유할 수 있어요');
      Navigator.pop(context);
    } else {
      showTopToast(context, _friendlyError(state.errorMessage, '내보내기에 실패했어요'));
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
            message.isEmpty ? '준비 중...' : message,
            style: const TextStyle(fontSize: 13, color: AppColors.gray600),
          ),
          const SizedBox(height: 4),
          Text(
            '${(progress * 100).round()}%',
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
