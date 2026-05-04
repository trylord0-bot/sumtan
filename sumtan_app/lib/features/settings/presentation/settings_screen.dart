import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/widgets/app_toast.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
              trailing: const _Badge(paid: true),
              onTap: () => _showExportSheet(context),
            ),
            _SettingsRow(
              iconBg: const Color(0xFFEFF6FF),
              icon: '📥',
              title: '데이터 가져오기',
              sub: 'ZIP 파일에서 복원',
              trailing: const _Badge(paid: false),
              onTap: () => showTopToast(context, '데이터 가져오기는 준비 중이에요 🛠️'),
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

// ── Paid / free badge ─────────────────────────────────────────────────────────

class _Badge extends StatelessWidget {
  final bool paid;
  const _Badge({required this.paid});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        gradient: paid
            ? const LinearGradient(
                colors: [Color(0xFFF59E0B), Color(0xFFD97706)],
              )
            : null,
        color: paid ? null : AppColors.primary100,
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Text(
        paid ? '유료' : '무료',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: paid ? AppColors.white : AppColors.primary700,
        ),
      ),
    );
  }
}

// ── Data export bottom sheet ──────────────────────────────────────────────────

class _ExportSheet extends StatelessWidget {
  const _ExportSheet();

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
            // IAP 배너
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFFBEB), Color(0xFFFEF3C7)],
                ),
                border: Border.all(color: const Color(0xFFFBBF24)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('💳', style: TextStyle(fontSize: 22)),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '내보내기 위해서는 결제가 필요해요',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFD97706),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1회 내보내기',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD97706),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '결제 후 즉시 파일 저장',
                              style: TextStyle(fontSize: 11, color: Color(0xFFD97706)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '₩3,000',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFFD97706),
                              ),
                            ),
                            Text(
                              '/ 회',
                              style: TextStyle(fontSize: 11, color: Color(0xFFD97706)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                onPressed: () {
                  showTopToast(context, '결제 기능을 준비 중이에요 💳');
                  Navigator.pop(context);
                },
                child: const Text(
                  '💳 결제하고 내보내기 · ₩3,000',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
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
}
