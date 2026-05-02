import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/journal/presentation/journal_screen.dart';
import '../features/pet/presentation/pet_register_screen.dart';
import '../features/pet/provider/pet_provider.dart';
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
        GoRoute(path: '/',         builder: (_, __) => const HomeScreen()),
        GoRoute(path: '/journal',  builder: (_, __) => const JournalScreen()),
        GoRoute(path: '/stats',    builder: (_, __) => const _StatsPlaceholder()),
        GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
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

// ─── Main scaffold (AppHeader + BottomNav 유지) ────────────────────────────────

class MainScaffold extends ConsumerWidget {
  final String location;
  final Widget child;

  const MainScaffold({super.key, required this.location, required this.child});

  static const _tabs   = ['/', '/journal', '/stats', '/settings'];
  static const _labels = ['홈', '일지', '통계', '설정'];
  static const _icons  = [
    Icons.home_rounded,
    Icons.book_rounded,
    Icons.bar_chart_rounded,
    Icons.settings_rounded,
  ];

  int get _currentIndex {
    for (int i = 0; i < _tabs.length; i++) {
      if (location == _tabs[i]) return i;
    }
    return 0;
  }

  String get _title => const ['반려숨탄', '일지', '통계', '설정'][_currentIndex];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet     = ref.watch(selectedPetProvider);
    final pets    = ref.watch(petsProvider).valueOrNull ?? [];
    final idx     = ref.watch(selectedPetIndexProvider);

    return Scaffold(
      appBar: AppHeader(
        title: _title,
        petChip: pets.isNotEmpty
            ? PetChip(
                label: '${pet?.speciesEmoji ?? ''} ${pet?.name ?? ''}',
                onTap: pets.length > 1
                    ? () => ref
                        .read(selectedPetIndexProvider.notifier)
                        .state = (idx + 1) % pets.length
                    : null,
              )
            : null,
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => context.go(_tabs[i]),
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primary600,
        unselectedItemColor: AppColors.gray400,
        selectedLabelStyle: const TextStyle(
          fontSize: 11, fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 11, fontWeight: FontWeight.w500,
        ),
        elevation: 8,
        items: List.generate(
          _tabs.length,
          (i) => BottomNavigationBarItem(
            icon: Icon(_icons[i]),
            label: _labels[i],
          ),
        ),
      ),
    );
  }
}

// ─── 통계 탭 placeholder ───────────────────────────────────────────────────────

class _StatsPlaceholder extends StatelessWidget {
  const _StatsPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('📊', style: TextStyle(fontSize: 48)),
          SizedBox(height: 16),
          Text(
            '통계 기능은 준비 중이에요',
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
