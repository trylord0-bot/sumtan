import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'db_factory_stub.dart' if (dart.library.html) 'db_factory_web.dart';

class DatabaseHelper {
  static DatabaseHelper? _instance;
  static Database? _db;

  DatabaseHelper._();

  static DatabaseHelper get instance {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  Future<Database> get database async {
    _db ??= await _init();
    return _db!;
  }

  Future<Database> _init() async {
    initDatabaseFactory();
    final path = await getDbPath('sumtan.db');
    return openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE pets (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        species TEXT,
        breed TEXT,
        birth_date TEXT,
        gender TEXT,
        is_neutered INTEGER DEFAULT 0,
        profile_image_path TEXT,
        created_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE records (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        pet_id INTEGER NOT NULL,
        category TEXT NOT NULL,
        recorded_at TEXT NOT NULL,
        data_json TEXT,
        memo TEXT,
        created_at TEXT NOT NULL,
        FOREIGN KEY (pet_id) REFERENCES pets(id) ON DELETE CASCADE
      )
    ''');

    await _createAlarmsTable(db);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await _createAlarmsTable(db);
    }
  }

  Future<void> _createAlarmsTable(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS alarms (
        id           INTEGER PRIMARY KEY AUTOINCREMENT,
        pet_id       INTEGER NOT NULL,
        type         TEXT NOT NULL,
        label        TEXT,
        scheduled_at TEXT,
        repeat_rule  TEXT DEFAULT 'none',
        repeat_time  TEXT,
        is_enabled   INTEGER DEFAULT 1,
        is_done      INTEGER DEFAULT 0,
        done_at      TEXT,
        record_id    INTEGER,
        memo         TEXT,
        created_at   TEXT NOT NULL,
        FOREIGN KEY (pet_id) REFERENCES pets(id) ON DELETE CASCADE
      )
    ''');
  }
}
