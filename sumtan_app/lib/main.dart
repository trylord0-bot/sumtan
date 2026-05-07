import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'app/app.dart';
import 'core/database/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko');

  try {
    await DatabaseHelper.instance.database;
  } catch (error, stackTrace) {
    debugPrint('DB 초기화 실패: $error\n$stackTrace');
    runApp(const DbErrorApp());
    return;
  }

  runApp(const ProviderScope(child: SumtanApp()));
}

class DbErrorApp extends StatelessWidget {
  const DbErrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              '앱 데이터를 준비하는 중 문제가 발생했습니다.\n잠시 후 다시 실행해 주세요.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
