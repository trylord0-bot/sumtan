import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/journal/presentation/journal_screen.dart';
import '../features/alarm/presentation/alarm_screen.dart';
import '../features/alarm/provider/alarm_provider.dart';
import '../features/record/presentation/category_bottom_sheet.dart';
import '../features/record/data/record_model.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/profile/presentation/add_pet_screen.dart';
import '../features/profile/presentation/widgets/pet_switch_sheet.dart';
import '../features/settings/presentation/settings_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../features/health_guide/presentation/health_guide_screen.dart';
import '../features/settings/presentation/help_screen.dart';
import '../features/settings/presentation/privacy_policy_screen.dart';
import '../features/pet/provider/pet_provider.dart';
import 'theme/app_colors.dart';
import 'widgets/app_toast.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScaffold(
        location: state.matchedLocation,
        child: child,
      ),
      routes: [
        GoRoute(path: '/',              builder: (_, __) => const HomeScreen()),
        GoRoute(
          path: '/journal',
          builder: (_, state) => JournalScreen(
            initialEditRecord: state.extra is Record ? state.extra as Record : null,
          ),
        ),
        GoRoute(path: '/notifications', builder: (_, __) => const AlarmScreen()),
        GoRoute(path: '/profile',       builder: (_, __) => const ProfileScreen()),
        GoRoute(path: '/settings',      builder: (_, __) => const SettingsScreen()),
      ],
    ),
    GoRoute(
      path: '/profile/add',
      builder: (_, __) => const AddPetScreen(),
    ),
    GoRoute(
      path: '/health-guide',
      builder: (_, __) => const HealthGuideScreen(),
    ),
    GoRoute(
      path: '/pet/register',
      builder: (_, __) => const AddPetScreen(),
    ),
    GoRoute(
      path: '/pet/edit',
      builder: (_, state) => const AddPetScreen(),
    ),
    GoRoute(
      path: '/help',
      builder: (_, __) => const HelpScreen(),
    ),
    GoRoute(
      path: '/privacy-policy',
      builder: (_, __) => const PrivacyPolicyScreen(),
    ),
  ],
);

// ─── Main scaffold ─────────────────────────────────────────────────────────────

class MainScaffold extends ConsumerWidget {
  final String location;
  final Widget child;

  const MainScaffold({super.key, required this.location, required this.child});

  static const _tabRoutes = ['/', '/journal', '', '/notifications', '/profile'];

  int get _currentIndex {
    for (int i = 0; i < _tabRoutes.length; i++) {
      if (i == 2) continue;
      if (location == _tabRoutes[i]) return i;
    }
    return 0;
  }

  String get _title {
    switch (location) {
      case '/': return '홈';
      case '/journal': return '일지';
      case '/notifications': return '알림';
      case '/profile': return '프로필';
      case '/settings': return '설정';
      default: return '반려숨탄';
    }
  }

  bool get _showNav {
    return location == '/' ||
        location == '/journal' ||
        location == '/notifications' ||
        location == '/profile';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = ref.watch(selectedPetProvider);
    final pets = ref.watch(petsProvider).valueOrNull ?? [];

    // Reload alarms when pet changes
    ref.listen(selectedPetProvider, (prev, next) {
      if (prev?.id != next?.id) {
        ref.invalidate(alarmListProvider);
      }
    });

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: _TopBar(
        title: _title,
        showHamburger: location != '/settings',
        pet: pet,
        pets: pets,
        showClose: location == '/settings',
        onClose: () => context.go('/'),
        onPetChip: () => showPetSwitchSheet(context, ref),
      ),
      endDrawer: const _AppDrawer(),
      body: child,
      floatingActionButton: location == '/notifications'
          ? Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.primary700,
                foregroundColor: AppColors.white,
                onPressed: () {
                  if (ref.read(selectedPetProvider) == null) {
                    showTopToast(context, '아직 반려동물이 없네요 🐾 프로필에서 먼저 등록해 주세요!');
                    return;
                  }
                  showAlarmAddSheet(context);
                },
                icon: const Icon(Icons.add_alert_rounded, size: 22),
                label: const Text(
                  '알림 추가',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: _showNav
          ? _CustomBottomBar(
              currentIndex: _currentIndex,
              onTabTap: (i) {
                if (i == 2) {
                  if (pet == null) {
                    showTopToast(context, '아직 반려동물이 없네요 🐾 프로필에서 먼저 등록해 주세요!');
                    return;
                  }
                  showCategoryBottomSheet(context);
                  return;
                }
                if (_tabRoutes[i].isNotEmpty) {
                  context.go(_tabRoutes[i]);
                }
              },
            )
          : null,
    );
  }
}

// ─── Top app bar ──────────────────────────────────────────────────────────────

class _TopBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final bool showHamburger;
  final dynamic pet;
  final List pets;
  final bool showClose;
  final VoidCallback onClose;
  final VoidCallback onPetChip;

  const _TopBar({
    required this.title,
    required this.showHamburger,
    required this.pet,
    required this.pets,
    required this.showClose,
    required this.onClose,
    required this.onPetChip,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showChip = pets.isNotEmpty && !showClose;

    final chip = showChip
        ? GestureDetector(
            onTap: onPetChip,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: AppColors.primary200),
              ),
              child: Text(
                '${pet?.speciesEmoji ?? ''} ${pet?.name ?? ''} ▾',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary700,
                ),
              ),
            ),
          )
        : null;

    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      leading: showClose
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.gray700,
                size: 22,
              ),
              onPressed: onClose,
            )
          : null,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
            color: AppColors.gray900,
          ),
        ),
      ),
      flexibleSpace: chip == null
          ? null
          : SafeArea(
              bottom: false,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(child: chip),
                ],
              ),
            ),
      actions: [
        if (showHamburger)
          Builder(
            builder: (ctx) => IconButton(
              icon: const Icon(Icons.menu, color: AppColors.gray700, size: 22),
              onPressed: () => Scaffold.of(ctx).openEndDrawer(),
            ),
          ),
        const SizedBox(width: 4),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(height: 1, color: AppColors.gray100),
      ),
    );
  }
}

// ─── Custom bottom bar ─────────────────────────────────────────────────────────

class _CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTabTap;

  const _CustomBottomBar({
    required this.currentIndex,
    required this.onTabTap,
  });

  static const _labels = ['홈', '일지', '', '알림', '프로필'];
  static const _icons = [
    Icons.home_rounded,
    Icons.calendar_month_rounded,
    Icons.add,
    Icons.notifications_rounded,
    Icons.pets_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(color: AppColors.gray200, width: 1)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: List.generate(5, (i) {
              if (i == 2) return const Expanded(child: SizedBox());
              final isActive = currentIndex == i;
              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTabTap(i),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(_icons[i], size: 22,
                          color: isActive ? AppColors.primary500 : AppColors.gray400),
                      const SizedBox(height: 4),
                      Text(_labels[i], style: TextStyle(
                        fontSize: 11,
                        fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
                        color: isActive ? AppColors.primary500 : AppColors.gray400,
                      )),
                      const SizedBox(height: 4),
                      Container(
                        width: 20, height: 3,
                        decoration: BoxDecoration(
                          color: isActive ? AppColors.primary400 : Colors.transparent,
                          borderRadius: BorderRadius.circular(9999),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          // Center FAB
          Positioned(
            top: -16, left: 0, right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => onTabTap(2),
                child: Container(
                  width: 52, height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.primary400,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary400.withValues(alpha: 0.4),
                        blurRadius: 12, offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.add, color: AppColors.white, size: 28),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── End drawer ────────────────────────────────────────────────────────────────

class _AppDrawer extends StatelessWidget {
  const _AppDrawer();

  static const _tealBg  = Color(0xFFF0FDFA);
  static const _blueBg  = Color(0xFFEFF6FF);
  static const _amberBg = Color(0xFFFFFBEB);

  void _openHospitalDialog(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (ctx) => Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 56, height: 56,
                  decoration: BoxDecoration(
                    color: _tealBg,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: const Text('🏥', style: TextStyle(fontSize: 28)),
                ),
                const SizedBox(height: 14),
                const Text(
                  '외부 웹페이지로 이동해요',
                  style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w700,
                    color: AppColors.gray900,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '주변 동물병원을 찾으려면\n외부 웹페이지가 필요해요.\n\n지금 바로 이동할까요? 🐾',
                  style: TextStyle(
                    fontSize: 13, color: AppColors.gray500, height: 1.65,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 46,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.gray100,
                            foregroundColor: AppColors.gray600,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () => Navigator.pop(ctx),
                          child: const Text('취소',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 46,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary400,
                            foregroundColor: AppColors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () async {
                            Navigator.pop(ctx);
                            final uri = Uri.parse(
                              'https://m.map.naver.com/search2/search.naver?query=%EB%8F%99%EB%AC%BC%EB%B3%91%EC%9B%90',
                            );
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri,
                                  mode: LaunchMode.externalApplication);
                            }
                          },
                          child: const Text('이동할게요',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── 헤더 (그라디언트, full-bleed) ──────────────────────────────
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primary600, AppColors.primary700],
              ),
            ),
            padding: EdgeInsets.fromLTRB(
              20,
              MediaQuery.of(context).padding.top + 24,
              20, 22,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('🐾 반려숨탄', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w800,
                  color: Colors.white,
                )),
                SizedBox(height: 4),
                Text('반려동물 건강관리 앱', style: TextStyle(
                  fontSize: 12, color: Colors.white70,
                )),
              ],
            ),
          ),
          // ── 본문 ────────────────────────────────────────────────────────
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 10),
              children: [
                const _DrawerSectionLabel('서비스'),
                _DrawerTile(
                  iconBg: _tealBg,
                  icon: '🏥',
                  label: '주변 병원 찾기',
                  sub: '내 위치 기반 동물병원',
                  onTap: () {
                    Navigator.pop(context);
                    _openHospitalDialog(context);
                  },
                ),
                _DrawerTile(
                  iconBg: _blueBg,
                  icon: '📖',
                  label: '건강관리 가이드',
                  sub: '반려동물 건강 안내서',
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/health-guide');
                  },
                ),
                const _DrawerDivider(),
                const _DrawerSectionLabel('앱'),
                _DrawerTile(
                  iconBg: AppColors.primary50,
                  icon: '⚙️',
                  label: '설정',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/settings');
                  },
                ),
                _DrawerTile(
                  iconBg: _amberBg,
                  icon: '❓',
                  label: '도움말',
                  onTap: () {
                    Navigator.pop(context);
                    context.push('/help');
                  },
                ),
              ],
            ),
          ),
          // ── 푸터 ────────────────────────────────────────────────────────
          SafeArea(
            top: false,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: AppColors.gray100)),
              ),
              child: const Text(
                'v1.0.0 · 반려숨탄',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: AppColors.gray400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Drawer sub-widgets ───────────────────────────────────────────────────────

class _DrawerSectionLabel extends StatelessWidget {
  final String text;
  const _DrawerSectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 4, 20, 6),
      child: Text(text, style: const TextStyle(
        fontSize: 10, fontWeight: FontWeight.w700,
        color: AppColors.gray400, letterSpacing: 0.8,
      )),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final Color iconBg;
  final String icon;
  final String label;
  final String? sub;
  final VoidCallback onTap;

  const _DrawerTile({
    required this.iconBg,
    required this.icon,
    required this.label,
    this.sub,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 36, height: 36,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(icon, style: const TextStyle(fontSize: 18)),
            ),
            const SizedBox(width: 13),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600,
                    color: AppColors.gray800,
                  )),
                  if (sub != null) ...[
                    const SizedBox(height: 1),
                    Text(sub!, style: const TextStyle(
                      fontSize: 11, color: AppColors.gray400,
                    )),
                  ],
                ],
              ),
            ),
            const Icon(Icons.chevron_right, size: 16, color: AppColors.gray400),
          ],
        ),
      ),
    );
  }
}

class _DrawerDivider extends StatelessWidget {
  const _DrawerDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      color: AppColors.gray100,
    );
  }
}
