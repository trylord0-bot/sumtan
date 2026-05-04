import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/journal/presentation/journal_screen.dart';
import '../features/alarm/presentation/alarm_screen.dart';
import '../features/alarm/provider/alarm_provider.dart';
import '../features/record/presentation/category_bottom_sheet.dart';
import '../features/profile/presentation/profile_screen.dart';
import '../features/profile/presentation/add_pet_screen.dart';
import '../features/profile/presentation/widgets/pet_switch_sheet.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../features/health_guide/presentation/health_guide_screen.dart';
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
        GoRoute(path: '/journal',       builder: (_, __) => const JournalScreen()),
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
    final pet  = ref.watch(selectedPetProvider);
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
        onPetChip: () => showPetSwitchSheet(context),
      ),
      endDrawer: _AppDrawer(pet: pet, location: location),
      body: child,
      floatingActionButton: location == '/notifications'
          ? Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.primary700,
                foregroundColor: AppColors.white,
                onPressed: () {
                  if (ref.read(selectedPetProvider) == null) {
                    showTopToast(context, '반려동물을 먼저 등록해 주세요 🐾');
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
                    showTopToast(context, '반려동물을 먼저 등록해 주세요 🐾');
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
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: Text(title, style: const TextStyle(
        fontSize: 17, fontWeight: FontWeight.w800, color: AppColors.gray900,
      )),
      actions: [
        if (pets.isNotEmpty && !showClose)
          GestureDetector(
            onTap: onPetChip,
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primary50,
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: AppColors.primary200),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${pet?.speciesEmoji ?? ''} ${pet?.name ?? ''} ▾',
                    style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600,
                      color: AppColors.primary700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (showClose)
          IconButton(
            icon: const Icon(Icons.close, color: AppColors.gray700, size: 22),
            onPressed: onClose,
          ),
        if (showHamburger)
          Builder(
            builder: (ctx) => IconButton(
              icon: const Icon(Icons.menu, color: AppColors.gray700, size: 22),
              onPressed: () => Scaffold.of(ctx).openEndDrawer(),
            ),
          ),
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

class _AppDrawer extends ConsumerWidget {
  final dynamic pet;
  final String location;

  const _AppDrawer({this.pet, required this.location});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petName  = pet?.name ?? '반려동물';
    final petEmoji = pet?.speciesEmoji ?? '🐾';

    return Drawer(
      backgroundColor: AppColors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: AppColors.primary600,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              child: Row(
                children: [
                  Container(
                    width: 44, height: 44,
                    decoration: const BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Text(petEmoji, style: const TextStyle(fontSize: 24)),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('반려숨탄', style: TextStyle(
                        fontSize: 13, color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      )),
                      Text(petName, style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w800,
                        color: Colors.white,
                      )),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _DrawerItem(
                    icon: '🏠', label: '홈',
                    active: location == '/',
                    onTap: () { Navigator.pop(context); context.go('/'); },
                  ),
                  _DrawerItem(
                    icon: '🐾', label: '내 반려동물',
                    active: location == '/profile',
                    onTap: () { Navigator.pop(context); context.go('/profile'); },
                  ),
                  _DrawerItem(
                    icon: '🔔', label: '알림 설정',
                    active: location == '/notifications',
                    onTap: () {
                      Navigator.pop(context);
                      context.go('/notifications');
                    },
                  ),
                  const Divider(height: 1, color: AppColors.gray200),
                  _DrawerItem(
                    icon: '💊', label: '건강관리 가이드',
                    onTap: () { Navigator.pop(context); context.push('/health-guide'); },
                  ),
                  _DrawerItem(
                    icon: '⚙️', label: '설정',
                    active: location == '/settings',
                    onTap: () { Navigator.pop(context); context.go('/settings'); },
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                '반려숨탄 v1.0.0',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: AppColors.gray400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _DrawerItem({
    required this.icon, required this.label,
    this.active = false, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: active ? AppColors.primary50 : null,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 12),
            Text(label, style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500,
              color: active ? AppColors.primary700 : AppColors.gray700,
            )),
          ],
        ),
      ),
    );
  }
}
