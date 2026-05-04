import '../data/alarm_model.dart';

// Stub notification service — actual push scheduling to be added
// when flutter_local_notifications is integrated for mobile builds.
class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  Future<void> init() async {}
  Future<bool> requestPermission() async => true;
  Future<void> schedule(Alarm alarm) async {}
  Future<void> cancel(int id) async {}
  Future<void> cancelAll() async {}
  Future<void> rescheduleAll(List<Alarm> alarms) async {}
}
