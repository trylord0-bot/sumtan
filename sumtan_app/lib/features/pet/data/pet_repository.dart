import '../../../core/database/database_helper.dart';
import 'pet_model.dart';

class PetRepository {
  final _db = DatabaseHelper.instance;

  Future<List<Pet>> getAll() async {
    final db = await _db.database;
    final rows = await db.query('pets', orderBy: 'created_at ASC');
    return rows.map(Pet.fromMap).toList();
  }

  Future<Pet?> getById(int id) async {
    final db = await _db.database;
    final rows = await db.query('pets', where: 'id = ?', whereArgs: [id]);
    if (rows.isEmpty) return null;
    return Pet.fromMap(rows.first);
  }

  Future<int> insert(Pet pet) async {
    final db = await _db.database;
    return db.insert('pets', pet.toMap());
  }

  Future<void> update(Pet pet) async {
    final db = await _db.database;
    await db.update('pets', pet.toMap(), where: 'id = ?', whereArgs: [pet.id]);
  }

  Future<void> delete(int id) async {
    final db = await _db.database;
    await db.delete('pets', where: 'id = ?', whereArgs: [id]);
  }
}
