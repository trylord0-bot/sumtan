import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'app/app.dart';
import 'core/database/database_helper.dart';
import 'features/alarm/data/alarm_repository.dart';
import 'features/alarm/service/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  try {
    await DatabaseHelper.instance.database;
  } catch (error, stackTrace) {
    debugPrint('DB 초기화 실패: $error\n$stackTrace');
    runApp(const DbErrorApp());
    return;
  }

  try {
    final notificationService = NotificationService.instance;
    await notificationService.init();
    await notificationService.requestPermission();
    final alarms = await AlarmRepository().getAllEnabled();
    await notificationService.rescheduleAll(alarms);
  } catch (error, stackTrace) {
    debugPrint('알림 초기화 실패: $error\n$stackTrace');
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
              'There was a problem preparing app data.\nPlease try again later.',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
