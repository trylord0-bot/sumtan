bool _isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

enum AlarmStatus { upcoming, todayPending, past, done, repeat }

class Alarm {
  final int? id;
  final int petId;
  final String type;
  final String? label;
  final String? scheduledAt;
  final String repeatRule;
  final String? repeatTime;
  final bool isEnabled;
  final bool isDone;
  final String? doneAt;
  final int? recordId;
  final String? memo;
  final String? alarmDays; // comma-separated e.g. "D-7,D-3,D-1"
  final String createdAt;

  const Alarm({
    this.id,
    required this.petId,
    required this.type,
    this.label,
    this.scheduledAt,
    this.repeatRule = 'none',
    this.repeatTime,
    this.isEnabled = true,
    this.isDone = false,
    this.doneAt,
    this.recordId,
    this.memo,
    this.alarmDays,
    required this.createdAt,
  });

  AlarmStatus get status {
    if (repeatRule != 'none') return AlarmStatus.repeat;
    if (isDone) return AlarmStatus.done;
    if (scheduledAt == null) return AlarmStatus.upcoming;
    final scheduled = DateTime.parse(scheduledAt!);
    final today = DateTime.now();
    if (_isSameDay(scheduled, today)) return AlarmStatus.todayPending;
    if (scheduled.isBefore(today)) return AlarmStatus.past;
    return AlarmStatus.upcoming;
  }

  // Days until scheduled date (negative if past)
  int? get daysUntil {
    if (scheduledAt == null) return null;
    final scheduled = DateTime.parse(scheduledAt!);
    final today =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final s = DateTime(scheduled.year, scheduled.month, scheduled.day);
    return s.difference(today).inDays;
  }

  Alarm copyWith({
    int? id,
    int? petId,
    String? type,
    String? label,
    String? scheduledAt,
    String? repeatRule,
    String? repeatTime,
    bool? isEnabled,
    bool? isDone,
    String? doneAt,
    int? recordId,
    String? memo,
    String? alarmDays,
    String? createdAt,
  }) =>
      Alarm(
        id: id ?? this.id,
        petId: petId ?? this.petId,
        type: type ?? this.type,
        label: label ?? this.label,
        scheduledAt: scheduledAt ?? this.scheduledAt,
        repeatRule: repeatRule ?? this.repeatRule,
        repeatTime: repeatTime ?? this.repeatTime,
        isEnabled: isEnabled ?? this.isEnabled,
        isDone: isDone ?? this.isDone,
        doneAt: doneAt ?? this.doneAt,
        recordId: recordId ?? this.recordId,
        memo: memo ?? this.memo,
        alarmDays: alarmDays ?? this.alarmDays,
        createdAt: createdAt ?? this.createdAt,
      );

  Map<String, dynamic> toMap() => {
        if (id != null) 'id': id,
        'pet_id': petId,
        'type': type,
        'label': label,
        'scheduled_at': scheduledAt,
        'repeat_rule': repeatRule,
        'repeat_time': repeatTime,
        'is_enabled': isEnabled ? 1 : 0,
        'is_done': isDone ? 1 : 0,
        'done_at': doneAt,
        'record_id': recordId,
        'memo': memo,
        'alarm_days': alarmDays,
        'created_at': createdAt,
      };

  factory Alarm.fromMap(Map<String, dynamic> m) => Alarm(
        id: m['id'] as int?,
        petId: m['pet_id'] as int,
        type: m['type'] as String,
        label: m['label'] as String?,
        scheduledAt: m['scheduled_at'] as String?,
        repeatRule: m['repeat_rule'] as String? ?? 'none',
        repeatTime: m['repeat_time'] as String?,
        isEnabled: (m['is_enabled'] as int? ?? 1) == 1,
        isDone: (m['is_done'] as int? ?? 0) == 1,
        doneAt: m['done_at'] as String?,
        recordId: m['record_id'] as int?,
        memo: m['memo'] as String?,
        alarmDays: m['alarm_days'] as String?,
        createdAt: m['created_at'] as String,
      );
}

// Type helpers
String alarmTypeEmoji(String type) {
  switch (type) {
    case 'vaccination':
      return '💉';
    case 'hospital':
      return '🏥';
    case 'medication':
      return '💊';
    case 'meal':
      return '🍽️';
    case 'daily':
      return '📋';
    default:
      return '🔔';
  }
}

String alarmTypeLabel(String type) {
  switch (type) {
    case 'vaccination':
      return '예방접종';
    case 'hospital':
      return '병원 예약';
    case 'medication':
      return '투약';
    case 'meal':
      return '식사 시간';
    case 'daily':
      return '일일 리마인더';
    default:
      return '알림';
  }
}
