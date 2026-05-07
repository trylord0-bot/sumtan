import 'dart:convert';
import 'dart:io';

import '../../../core/database/database_helper.dart';
import 'record_model.dart';

class RecordRepository {
  final _db = DatabaseHelper.instance;

  Future<List<Record>> getByPet(int petId) async {
    final db = await _db.database;
    final rows = await db.query(
      'records',
      where: 'pet_id = ?',
      whereArgs: [petId],
      orderBy: 'recorded_at DESC',
    );
    return rows.map(Record.fromMap).toList();
  }

  Future<List<Record>> getByPetAndDate(int petId, DateTime date) async {
    final db = await _db.database;
    final dateStr = '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
    final rows = await db.query(
      'records',
      where: "pet_id = ? AND recorded_at LIKE ?",
      whereArgs: [petId, '$dateStr%'],
      orderBy: 'recorded_at ASC',
    );
    return rows.map(Record.fromMap).toList();
  }

  Future<List<Record>> getByPetAndMonth(int petId, int year, int month) async {
    final db = await _db.database;
    final monthStr = '${year.toString().padLeft(4, '0')}-'
        '${month.toString().padLeft(2, '0')}';
    final rows = await db.query(
      'records',
      where: "pet_id = ? AND recorded_at LIKE ?",
      whereArgs: [petId, '$monthStr%'],
      orderBy: 'recorded_at DESC',
    );
    return rows.map(Record.fromMap).toList();
  }

  Future<List<Record>> getRecentByPet(int petId, {int limit = 10}) async {
    final db = await _db.database;
    final rows = await db.query(
      'records',
      where: 'pet_id = ?',
      whereArgs: [petId],
      orderBy: 'recorded_at DESC',
      limit: limit,
    );
    return rows.map(Record.fromMap).toList();
  }

  Future<List<Record>> getTodayByPet(int petId) async {
    return getByPetAndDate(petId, DateTime.now());
  }

  Future<int> insert(Record record) async {
    final db = await _db.database;
    return db.insert('records', record.toMap());
  }

  Future<void> update(Record record) async {
    final db = await _db.database;
    await db.update(
      'records', record.toMap(),
      where: 'id = ?', whereArgs: [record.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await _db.database;
    final rows = await db.query(
      'records',
      columns: ['data_json'],
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isNotEmpty) {
      await _deleteMediaFiles(rows.first['data_json'] as String?);
    }
    await db.delete('records', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> _deleteMediaFiles(String? dataJson) async {
    if (dataJson == null) return;
    Object? decoded;
    try {
      decoded = jsonDecode(dataJson);
    } catch (_) {
      return;
    }
    if (decoded is! Map<String, dynamic>) return;
    final media = decoded['media'];
    if (media is! List) return;
    for (final item in media) {
      if (item is! Map) continue;
      final path = item['path'] as String?;
      if (path == null || path.isEmpty) continue;
      try {
        final file = File(path);
        if (await file.exists()) await file.delete();
      } catch (_) {
        // DB deletion should not be blocked by a missing or inaccessible file.
      }
    }
  }

  /// Weight records for the last [days] days, ordered ASC.
  Future<List<Record>> getWeightHistoryByPet(int petId, {int days = 7}) async {
    final db = await _db.database;
    final cutoff = DateTime.now().subtract(Duration(days: days - 1));
    final cutoffStr = '${cutoff.year.toString().padLeft(4, '0')}-'
        '${cutoff.month.toString().padLeft(2, '0')}-'
        '${cutoff.day.toString().padLeft(2, '0')}';
    final rows = await db.query(
      'records',
      where: "pet_id = ? AND category = 'weight' AND recorded_at >= ?",
      whereArgs: [petId, cutoffStr],
      orderBy: 'recorded_at ASC',
    );
    return rows.map(Record.fromMap).toList();
  }

  /// Returns {date: count} for the last 7 days including today (poop only).
  Future<Map<DateTime, int>> getWeeklyPoopCountsByPet(int petId) async {
    final now = DateTime.now();
    final result = <DateTime, int>{};
    for (int i = 6; i >= 0; i--) {
      final day = DateTime(now.year, now.month, now.day - i);
      final records = await getByPetAndDate(petId, day);
      final count = records.where((r) => r.category == 'poop').length;
      result[DateTime(day.year, day.month, day.day)] = count;
    }
    return result;
  }

  /// Returns {date: count} for the last 7 days including today (meal only).
  Future<Map<DateTime, int>> getWeeklyMealCountsByPet(int petId) async {
    final now = DateTime.now();
    final result = <DateTime, int>{};
    for (int i = 6; i >= 0; i--) {
      final day = DateTime(now.year, now.month, now.day - i);
      final records = await getByPetAndDate(petId, day);
      final count = records.where((r) => r.category == 'meal').length;
      result[DateTime(day.year, day.month, day.day)] = count;
    }
    return result;
  }

  /// Returns {date: score} for the last 7 days (water amount score sum).
  /// Scores: very_little=1, little=2, normal=3, much=4, very_much=5
  Future<Map<DateTime, int>> getWeeklyWaterStatsByPet(int petId) async {
    const scores = {
      'very_little': 1, 'little': 2, 'normal': 3, 'much': 4, 'very_much': 5,
    };
    final now = DateTime.now();
    final result = <DateTime, int>{};
    for (int i = 6; i >= 0; i--) {
      final day = DateTime(now.year, now.month, now.day - i);
      final records = await getByPetAndDate(petId, day);
      final score = records
          .where((r) => r.category == 'water')
          .map((r) => scores[r.dataJson?['water_amount'] as String?] ?? 0)
          .fold(0, (a, b) => a + b);
      result[DateTime(day.year, day.month, day.day)] = score;
    }
    return result;
  }

  /// The most recent record for a pet, or null if none.
  Future<Record?> getLastRecordByPet(int petId) async {
    final db = await _db.database;
    final rows = await db.query(
      'records',
      where: 'pet_id = ?',
      whereArgs: [petId],
      orderBy: 'recorded_at DESC',
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return Record.fromMap(rows.first);
  }
}
