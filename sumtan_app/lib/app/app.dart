import 'package:flutter/material.dart';
import 'router.dart';
import 'theme/app_theme.dart';

class SumtanApp extends StatelessWidget {
  const SumtanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '반려숨탄',
      theme: AppTheme.light,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
