import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

import '../data/alarm_model.dart';

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  static const _channelId = 'sumtan_alarm_channel';
  static const _channelName = '반려숨탄 알림';
  static const _channelDescription = '반려동물 건강관리 알림';
  static const _seoulTimeZone = 'Asia/Seoul';

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  bool _initialized = false;

  Future<void> init() async {
    if (_initialized) return;

    tz_data.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(_seoulTimeZone));

    if (kIsWeb || _isUnsupportedDesktop) {
      _initialized = true;
      return;
    }

    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _plugin.initialize(settings);

    const channel = AndroidNotificationChannel(
      _channelId,
      _channelName,
      description: _channelDescription,
      importance: Importance.max,
    );
    await _androidPlugin?.createNotificationChannel(channel);

    _initialized = true;
  }

  Future<bool> requestPermission() async {
    await init();

    final android = _androidPlugin;
    final notificationsGranted =
        await android?.requestNotificationsPermission() ?? true;
    await android?.requestExactAlarmsPermission();

    final ios = _iosPlugin;
    final iosGranted = await ios?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        ) ??
        true;

    return notificationsGranted && iosGranted;
  }

  Future<void> schedule(Alarm alarm) async {
    if (!alarm.isEnabled || alarm.isDone || alarm.id == null) return;
    await init();

    if (alarm.repeatRule == 'none') {
      await _scheduleOneTimeAlarm(alarm);
      return;
    }

    await _scheduleRepeatingAlarm(alarm);
  }

  Future<void> cancel(int id) async {
    await init();
    await _plugin.cancel(id);
    for (final notificationId in _derivedNotificationIds(id)) {
      await _plugin.cancel(notificationId);
    }
  }

  Future<void> cancelAll() async {
    await init();
    await _plugin.cancelAll();
  }

  Future<void> rescheduleAll(List<Alarm> alarms) async {
    await init();
    for (final alarm in alarms) {
      if (alarm.id != null) {
        await cancel(alarm.id!);
      }
      await schedule(alarm);
    }
  }

  Future<void> _scheduleOneTimeAlarm(Alarm alarm) async {
    final scheduledAt = alarm.scheduledAt;
    if (scheduledAt == null) return;

    final target = DateTime.parse(scheduledAt);
    final offsets = _alarmDayOffsets(alarm.alarmDays);

    for (final offset in offsets) {
      final notificationDate = target.subtract(Duration(days: offset));
      if (!notificationDate.isAfter(DateTime.now())) continue;

      final notificationId =
          offset == 0 ? alarm.id! : _offsetNotificationId(alarm.id!, offset);
      await _zonedSchedule(
        id: notificationId,
        alarm: alarm,
        scheduledDate: _toTzDateTime(notificationDate),
      );
    }
  }

  Future<void> _scheduleRepeatingAlarm(Alarm alarm) async {
    final time = _parseTime(alarm.repeatTime);
    if (time == null) return;

    switch (alarm.repeatRule) {
      case 'weekday':
        for (var weekday = DateTime.monday;
            weekday <= DateTime.friday;
            weekday++) {
          await _zonedSchedule(
            id: _weekdayNotificationId(alarm.id!, weekday),
            alarm: alarm,
            scheduledDate: _nextWeekdayTime(weekday, time.hour, time.minute),
            matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
          );
        }
      case 'weekend':
        for (final weekday in [DateTime.saturday, DateTime.sunday]) {
          await _zonedSchedule(
            id: _weekdayNotificationId(alarm.id!, weekday),
            alarm: alarm,
            scheduledDate: _nextWeekdayTime(weekday, time.hour, time.minute),
            matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
          );
        }
      case 'weekly':
        final createdAt = DateTime.tryParse(alarm.createdAt);
        final weekday = createdAt?.weekday ?? DateTime.now().weekday;
        await _zonedSchedule(
          id: alarm.id!,
          alarm: alarm,
          scheduledDate: _nextWeekdayTime(weekday, time.hour, time.minute),
          matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
        );
      case 'monthly':
        final createdAt = DateTime.tryParse(alarm.createdAt);
        final day = createdAt?.day ?? DateTime.now().day;
        await _zonedSchedule(
          id: alarm.id!,
          alarm: alarm,
          scheduledDate: _nextMonthDayTime(day, time.hour, time.minute),
          matchDateTimeComponents: DateTimeComponents.dayOfMonthAndTime,
        );
      case 'daily':
      default:
        await _zonedSchedule(
          id: alarm.id!,
          alarm: alarm,
          scheduledDate: _nextTime(time.hour, time.minute),
          matchDateTimeComponents: DateTimeComponents.time,
        );
    }
  }

  Future<void> _zonedSchedule({
    required int id,
    required Alarm alarm,
    required tz.TZDateTime scheduledDate,
    DateTimeComponents? matchDateTimeComponents,
  }) async {
    if (kIsWeb || _isUnsupportedDesktop) return;

    await _plugin.zonedSchedule(
      id,
      _notificationTitle(alarm),
      _notificationBody(alarm),
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          channelDescription: _channelDescription,
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: matchDateTimeComponents,
      payload: 'alarm:${alarm.id}',
    );
  }

  AndroidFlutterLocalNotificationsPlugin? get _androidPlugin =>
      _plugin.resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>();

  IOSFlutterLocalNotificationsPlugin? get _iosPlugin =>
      _plugin.resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>();

  bool get _isUnsupportedDesktop =>
      defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS ||
      defaultTargetPlatform == TargetPlatform.fuchsia;

  String _notificationTitle(Alarm alarm) {
    final label = alarm.label?.trim();
    if (label != null && label.isNotEmpty) return label;
    return '${alarmTypeLabel(alarm.type)} 알림';
  }

  String _notificationBody(Alarm alarm) {
    final memo = alarm.memo?.trim();
    if (memo != null && memo.isNotEmpty) return memo;

    switch (alarm.type) {
      case 'vaccination':
        return '예방접종 예정일을 확인해 주세요.';
      case 'hospital':
        return '병원 예약 시간이 다가왔어요.';
      case 'medication':
        return '투약할 시간이에요.';
      case 'meal':
        return '식사 시간을 챙겨 주세요.';
      case 'daily':
        return '오늘의 건강 기록을 남겨 주세요.';
      default:
        return '반려동물 건강관리 알림입니다.';
    }
  }

  List<int> _alarmDayOffsets(String? alarmDays) {
    if (alarmDays == null || alarmDays.trim().isEmpty) return const [0];

    final offsets = alarmDays
        .split(',')
        .map((day) => int.tryParse(day.trim().replaceFirst('D-', '')))
        .whereType<int>()
        .toSet()
        .toList()
      ..sort((a, b) => b.compareTo(a));

    return offsets.isEmpty ? const [0] : offsets;
  }

  _NotificationTime? _parseTime(String? value) {
    if (value == null || value.isEmpty) return null;
    final parts = value.split(':');
    if (parts.length != 2) return null;

    final hour = int.tryParse(parts[0]);
    final minute = int.tryParse(parts[1]);
    if (hour == null || minute == null) return null;
    if (hour < 0 || hour > 23 || minute < 0 || minute > 59) return null;

    return _NotificationTime(hour, minute);
  }

  tz.TZDateTime _toTzDateTime(DateTime dateTime) {
    return tz.TZDateTime(
      tz.local,
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute,
    );
  }

  tz.TZDateTime _nextTime(int hour, int minute) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduled =
        tz.TZDateTime(tz.local, now.year, now.month, now.day, hour, minute);
    if (!scheduled.isAfter(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }
    return scheduled;
  }

  tz.TZDateTime _nextWeekdayTime(int weekday, int hour, int minute) {
    final now = tz.TZDateTime.now(tz.local);
    var daysUntil = weekday - now.weekday;
    if (daysUntil < 0) daysUntil += DateTime.daysPerWeek;

    var scheduled = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    ).add(Duration(days: daysUntil));

    if (!scheduled.isAfter(now)) {
      scheduled = scheduled.add(const Duration(days: 7));
    }
    return scheduled;
  }

  tz.TZDateTime _nextMonthDayTime(int day, int hour, int minute) {
    final now = tz.TZDateTime.now(tz.local);
    var scheduled = _monthDayTime(now.year, now.month, day, hour, minute);
    if (!scheduled.isAfter(now)) {
      final nextMonth = now.month == 12 ? 1 : now.month + 1;
      final nextYear = now.month == 12 ? now.year + 1 : now.year;
      scheduled = _monthDayTime(nextYear, nextMonth, day, hour, minute);
    }
    return scheduled;
  }

  tz.TZDateTime _monthDayTime(
    int year,
    int month,
    int day,
    int hour,
    int minute,
  ) {
    final maxDay = DateTime(year, month + 1, 0).day;
    return tz.TZDateTime(
      tz.local,
      year,
      month,
      day.clamp(1, maxDay),
      hour,
      minute,
    );
  }

  List<int> _derivedNotificationIds(int id) => [
        for (final offset in [1, 3, 7]) _offsetNotificationId(id, offset),
        for (var weekday = DateTime.monday;
            weekday <= DateTime.sunday;
            weekday++)
          _weekdayNotificationId(id, weekday),
      ];

  int _offsetNotificationId(int id, int offset) => id * 100 + offset;
  int _weekdayNotificationId(int id, int weekday) => id * 100 + 10 + weekday;
}

class _NotificationTime {
  const _NotificationTime(this.hour, this.minute);

  final int hour;
  final int minute;
}
