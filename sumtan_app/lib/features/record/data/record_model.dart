import 'dart:convert';

class Record {
  final int? id;
  final int petId;
  final String category;
  final String recordedAt;
  final Map<String, dynamic>? dataJson;
  final String? memo;
  final String createdAt;

  const Record({
    this.id,
    required this.petId,
    required this.category,
    required this.recordedAt,
    this.dataJson,
    this.memo,
    required this.createdAt,
  });

  Record copyWith({
    int? id,
    int? petId,
    String? category,
    String? recordedAt,
    Map<String, dynamic>? dataJson,
    String? memo,
    String? createdAt,
  }) =>
      Record(
        id: id ?? this.id,
        petId: petId ?? this.petId,
        category: category ?? this.category,
        recordedAt: recordedAt ?? this.recordedAt,
        dataJson: dataJson ?? this.dataJson,
        memo: memo ?? this.memo,
        createdAt: createdAt ?? this.createdAt,
      );

  Map<String, dynamic> toMap() => {
        if (id != null) 'id': id,
        'pet_id': petId,
        'category': category,
        'recorded_at': recordedAt,
        'data_json': dataJson != null ? jsonEncode(dataJson) : null,
        'memo': memo,
        'created_at': createdAt,
      };

  factory Record.fromMap(Map<String, dynamic> m) => Record(
        id: m['id'] as int?,
        petId: m['pet_id'] as int,
        category: m['category'] as String,
        recordedAt: m['recorded_at'] as String,
        dataJson: m['data_json'] != null
            ? jsonDecode(m['data_json'] as String) as Map<String, dynamic>
            : null,
        memo: m['memo'] as String?,
        createdAt: m['created_at'] as String,
      );

  DateTime get recordedAtDate => DateTime.parse(recordedAt);
}
