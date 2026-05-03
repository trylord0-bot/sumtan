import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/journal/presentation/journal_screen.dart';
import '../features/pet/presentation/pet_register_screen.dart';
import '../features/pet/provider/pet_provider.dart';
import '../features/record/presentation/category_bottom_sheet.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../shared/widgets/app_header.dart';
import 'theme/app_colors.dart';

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
        GoRoute(path: '/notifications', builder: (_, __) => const _NotificationsPlaceholder()),
        GoRoute(path: '/profile',       builder: (_, __) => const _ProfilePlaceholder()),
        GoRoute(path: '/settings',      builder: (_, __) => const SettingsScreen()),
      ],
    ),
    GoRoute(
      path: '/pet/register',
      builder: (_, __) => const PetRegisterScreen(),
    ),
    GoRoute(
      path: '/pet/edit',
      builder: (_, state) => PetRegisterScreen(editPet: state.extra as dynamic),
    ),
  ],
);

// ─── Main scaffold ─────────────────────────────────────────────────────────────

class MainScaffold extends ConsumerWidget {
  final String location;
  final Widget child;

  const MainScaffold({super.key, required this.location, required this.child});

  // Tab routes mapped by index (index 2 is center FAB — no route)
  static const _tabRoutes = ['/', '/journal', '', '/notifications', '/profile'];

  int get _currentIndex {
    for (int i = 0; i < _tabRoutes.length; i++) {
      if (i == 2) continue;
      if (location == _tabRoutes[i]) return i;
    }
    return 0;
  }

  String get _title {
    switch (_currentIndex) {
      case 0: return '홈';
      case 1: return '일지';
      case 3: return '알림';
      case 4: return '프로필';
      default: return '반려숨탄';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet  = ref.watch(selectedPetProvider);
    final pets = ref.watch(petsProvider).valueOrNull ?? [];
    final idx  = ref.watch(selectedPetIndexProvider);

    return Scaffold(
      backgroundColor: AppColors.creamBg,
      appBar: AppHeader(
        title: _title,
        hamburger: true,
        petChip: pets.isNotEmpty
            ? PetChip(
                label: '${pet?.speciesEmoji ?? ''} ${pet?.name ?? ''} ▾',
                onTap: pets.length > 1
                    ? () => ref
                        .read(selectedPetIndexProvider.notifier)
                        .state = (idx + 1) % pets.length
                    : null,
              )
            : null,
      ),
      endDrawer: _AppDrawer(pet: pet),
      body: child,
      bottomNavigationBar: _CustomBottomBar(
        currentIndex: _currentIndex,
        onTabTap: (i) {
          if (i == 2) {
            showCategoryBottomSheet(context);
            return;
          }
          if (_tabRoutes[i].isNotEmpty) {
            context.go(_tabRoutes[i]);
          }
        },
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
              if (i == 2) {
                // Spacer for the center FAB slot
                return const Expanded(child: SizedBox());
              }
              final isActive = currentIndex == i;
              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTabTap(i),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        _icons[i],
                        size: 22,
                        color: isActive
                            ? AppColors.primary500
                            : AppColors.gray400,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _labels[i],
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: isActive
                              ? FontWeight.w700
                              : FontWeight.w500,
                          color: isActive
                              ? AppColors.primary500
                              : AppColors.gray400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Active indicator underline
                      Container(
                        width: 20,
                        height: 3,
                        decoration: BoxDecoration(
                          color: isActive
                              ? AppColors.primary400
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(9999),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          // Center FAB — raised above bar
          Positioned(
            top: -16,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => onTabTap(2),
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: AppColors.primary400,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary400.withValues(alpha: 0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
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

  const _AppDrawer({this.pet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petName  = pet?.name ?? '반려동물';
    final petEmoji = pet?.speciesEmoji ?? '🐾';
    final breed    = pet?.breed as String? ?? '';
    final ageYears = pet?.ageYears as int?;
    final breedAge = [
      if (breed.isNotEmpty) breed,
      if (ageYears != null) '만 $ageYears세',
    ].join(' · ');

    return Drawer(
      backgroundColor: AppColors.white,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Container(
              color: AppColors.primary50,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              child: Row(
                children: [
                  Text(petEmoji, style: const TextStyle(fontSize: 28)),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        petName,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary900,
                        ),
                      ),
                      if (breedAge.isNotEmpty)
                        Text(
                          breedAge,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.gray500,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            // Menu items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _DrawerItem(
                    icon: '🏠',
                    label: '홈으로',
                    onTap: () {
                      Navigator.pop(context);
                      GoRouter.of(context).go('/');
                    },
                  ),
                  _DrawerItem(
                    icon: '📊',
                    label: '통계 & 그래프',
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('통계 기능은 준비 중이에요'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  const Divider(height: 1, color: AppColors.gray200),
                  _DrawerItem(
                    icon: '🏥',
                    label: '응급 병원 찾기',
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('응급 병원 찾기는 준비 중이에요'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  _DrawerItem(
                    icon: '🚨',
                    label: '응급 대응 가이드',
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('응급 대응 가이드는 준비 중이에요'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  const Divider(height: 1, color: AppColors.gray200),
                  _DrawerItem(
                    icon: '📤',
                    label: '데이터 내보내기',
                    onTap: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('데이터 내보내기는 준비 중이에요'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                  ),
                  _DrawerItem(
                    icon: '⚙️',
                    label: '설정',
                    onTap: () {
                      Navigator.pop(context);
                      GoRouter.of(context).go('/settings');
                    },
                  ),
                ],
              ),
            ),
            // Footer
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                '반려숨탄 v1.0.0',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  color: AppColors.gray400,
                ),
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
  final VoidCallback onTap;

  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.gray700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Placeholder screens ───────────────────────────────────────────────────────

class _NotificationsPlaceholder extends StatelessWidget {
  const _NotificationsPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('🔔', style: TextStyle(fontSize: 48)),
          SizedBox(height: 16),
          Text(
            '알림 기능은 준비 중이에요',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.gray500,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfilePlaceholder extends StatelessWidget {
  const _ProfilePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('🐾', style: TextStyle(fontSize: 48)),
          SizedBox(height: 16),
          Text(
            '프로필 기능은 준비 중이에요',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.gray500,
            ),
          ),
        ],
      ),
    );
  }
}
