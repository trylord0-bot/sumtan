import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'l10n/generated/app_localizations.dart';
import 'l10n/locale_controller.dart';
import 'router.dart';
import 'theme/app_theme.dart';
import 'widgets/startup_splash.dart';

class SumtanApp extends ConsumerWidget {
  const SumtanApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider).valueOrNull;
    //final locale = Locale('en');

    return MaterialApp.router(
      title: 'Pet Note',
      theme: AppTheme.light,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        Intl.defaultLocale = Localizations.localeOf(context).toLanguageTag();
        return StartupSplash(
          child: _KeyboardDismissOnTap(
            child: child ?? const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}

class _KeyboardDismissOnTap extends StatelessWidget {
  const _KeyboardDismissOnTap({required this.child});

  final Widget child;

  bool get _isMobilePlatform {
    if (kIsWeb) return false;

    return switch (defaultTargetPlatform) {
      TargetPlatform.android || TargetPlatform.iOS => true,
      _ => false,
    };
  }

  void _handlePointerDown(PointerDownEvent event) {
    if (!_isMobilePlatform) return;

    final currentFocus = FocusManager.instance.primaryFocus;
    final focusedContext = currentFocus?.context;
    if (currentFocus == null || focusedContext == null) return;

    final renderObject = focusedContext.findRenderObject();
    if (renderObject is RenderBox && renderObject.attached) {
      final localPosition = renderObject.globalToLocal(event.position);
      if (renderObject.paintBounds.contains(localPosition)) {
        return;
      }
    }

    currentFocus.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: _handlePointerDown,
      child: child,
    );
  }
}
