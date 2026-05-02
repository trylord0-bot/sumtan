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
    await db.delete('records', where: 'id = ?', whereArgs: [id]);
  }
}
