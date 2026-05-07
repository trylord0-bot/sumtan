import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/alarm_model.dart';
import '../data/alarm_repository.dart';
import '../service/notification_service.dart';
import '../../pet/data/pet_model.dart';
import '../../pet/provider/pet_provider.dart';
import '../../record/data/record_model.dart';
import '../../record/data/record_repository.dart';
import '../../record/provider/record_provider.dart';

final alarmRepositoryProvider = Provider((ref) => AlarmRepository());
final notificationServiceProvider =
    Provider((_) => NotificationService.instance);

final alarmListProvider =
    StateNotifierProvider<AlarmNotifier, AsyncValue<List<Alarm>>>(
  (ref) => AlarmNotifier(
    ref.watch(alarmRepositoryProvider),
    ref.watch(notificationServiceProvider),
    ref.watch(selectedPetProvider),
    ref.watch(recordRepositoryProvider),
  ),
);

final pastAlarmsVisibleProvider = StateProvider<bool>((ref) => false);

class AlarmNotifier extends StateNotifier<AsyncValue<List<Alarm>>> {
  final AlarmRepository _repo;
  final NotificationService _ns;
  final Pet? _pet;
  final RecordRepository _recordRepo;

  AlarmNotifier(this._repo, this._ns, this._pet, this._recordRepo)
      : super(const AsyncValue.loading()) {
    _load();
  }

  Future<void> _load() async {
    if (_pet == null) {
      state = const AsyncValue.data([]);
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _repo.getByPet(_pet!.id!));
  }

  Future<void> reload() => _load();

  Future<void> add(Alarm alarm) async {
    final saved = await _repo.insert(alarm);
    await _ns.schedule(saved);
    await _load();
  }

  Future<void> update(Alarm alarm) async {
    await _repo.update(alarm);
    await _ns.cancel(alarm.id!);
    if (alarm.isEnabled) await _ns.schedule(alarm);
    await _load();
  }

  Future<void> snooze(Alarm alarm, int minutes) async {
    final now = DateTime.now();
    final scheduledAt = alarm.scheduledAt;
    final scheduled =
        scheduledAt == null ? null : DateTime.tryParse(scheduledAt);
    final baseTime =
        scheduled == null || scheduled.isBefore(now) ? now : scheduled;
    final updated = alarm.copyWith(
      scheduledAt: baseTime.add(Duration(minutes: minutes)).toIso8601String(),
      isDone: false,
    );

    await _repo.update(updated);
    await _ns.cancel(alarm.id!);
    if (updated.isEnabled) await _ns.schedule(updated);
    await _load();
  }

  Future<void> snoozeUntil(Alarm alarm, DateTime scheduledAt) async {
    final updated = alarm.copyWith(
      scheduledAt: scheduledAt.toIso8601String(),
      isDone: false,
    );

    await _repo.update(updated);
    await _ns.cancel(alarm.id!);
    if (updated.isEnabled) await _ns.schedule(updated);
    await _load();
  }

  Future<void> delete(int id) async {
    await _repo.delete(id);
    await _ns.cancel(id);
    await _load();
  }

  Future<void> deleteAll(Iterable<Alarm> alarms) async {
    final ids = alarms.map((alarm) => alarm.id).whereType<int>().toList();
    for (final id in ids) {
      await _repo.delete(id);
      await _ns.cancel(id);
    }
    await _load();
  }

  Future<void> toggle(int id, bool enabled) async {
    final alarms = state.valueOrNull ?? [];
    final alarm = alarms.firstWhere((a) => a.id == id);
    final updated = alarm.copyWith(isEnabled: enabled);
    await _repo.update(updated);
    if (enabled) {
      await _ns.schedule(updated);
    } else {
      await _ns.cancel(id);
    }
    await _load();
  }

  Future<void> markDone(int id) async {
    final alarms = state.valueOrNull ?? [];
    final alarm = alarms.firstWhere((a) => a.id == id);
    final updated = alarm.copyWith(
      isDone: true,
      doneAt: DateTime.now().toIso8601String(),
    );
    await _repo.update(updated);
    await _ns.cancel(id);

    // Auto-create a record entry for the completed alarm
    if (_pet != null) {
      await _recordRepo.insert(Record(
        petId: _pet!.id!,
        category: alarm.type,
        recordedAt: DateTime.now().toIso8601String(),
        memo: alarm.label,
        createdAt: DateTime.now().toIso8601String(),
      ));
    }

    await _load();
  }

  Future<void> reschedule(Alarm alarm) async {
    final updated = alarm.copyWith(isDone: false, doneAt: null);
    await _repo.update(updated);
    await _ns.cancel(alarm.id!);
    if (updated.isEnabled) await _ns.schedule(updated);
    await _load();
  }
}
