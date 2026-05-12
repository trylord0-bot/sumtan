import '../../../core/database/database_helper.dart';
import 'alarm_model.dart';

class AlarmRepository {
  final _db = DatabaseHelper.instance;

  Future<List<Alarm>> getByPet(int petId) async {
    final db = await _db.database;
    final rows = await db.query(
      'alarms',
      where: 'pet_id = ?',
      whereArgs: [petId],
      orderBy: 'created_at DESC',
    );
    return rows.map(Alarm.fromMap).toList();
  }

  Future<List<Alarm>> getAllEnabled() async {
    final db = await _db.database;
    final rows = await db.query('alarms', where: 'is_enabled = 1');
    return rows.map(Alarm.fromMap).toList();
  }

  Future<Alarm> insert(Alarm alarm) async {
    final db = await _db.database;
    final id = await db.insert('alarms', alarm.toMap());
    return alarm.copyWith(id: id);
  }

  Future<void> update(Alarm alarm) async {
    final db = await _db.database;
    await db.update(
      'alarms',
      alarm.toMap(),
      where: 'id = ?',
      whereArgs: [alarm.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await _db.database;
    await db.delete('alarms', where: 'id = ?', whereArgs: [id]);
  }
}
