import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class SumtanApp extends ConsumerWidget {
  const SumtanApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: '반려숨탄',
      theme: AppTheme.light,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return _KeyboardDismissOnTap(
          child: child ?? const SizedBox.shrink(),
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
