import 'dart:async';

import 'package:sqflite_common/sqflite.dart';

import 'db_factory_stub.dart'
    if (dart.library.io) 'db_factory_io.dart'
    if (dart.library.html) 'db_factory_web.dart';

class DatabaseHelper {
  static DatabaseHelper? _instance;
  static Database? _db;
  static Completer<Database>? _dbCompleter;

  DatabaseHelper._();

  static DatabaseHelper get instance {
    _instance ??= DatabaseHelper._();
    return _instance!;
  }

  Future<Database> get database async {
    if (_db != null) return _db!;
    if (_dbCompleter != null) return _dbCompleter!.future;

    _dbCompleter = Completer<Database>();
    try {
      _db = await _init();
      _dbCompleter!.complete(_db);
      return _db!;
    } catch (error, stackTrace) {
      _dbCompleter!.completeError(error, stackTrace);
      _dbCompleter = null;
      rethrow;
    }
  }

  Future<Database> _init() async {
    initDatabaseFactory();
    final path = await getDbPath('sumtan.db');
    return databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: 4,
        onConfigure: (db) async {
          await db.execute('PRAGMA foreign_keys = ON');
        },
        onCreate: _onCreate,
        onUpgrade: _onUpgrade,
      ),
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
        weight REAL,
        is_neutered INTEGER DEFAULT 0,
        microchip_id TEXT,
        reg_number TEXT,
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

  /// records.data_json 구조 (category별)
  /// - 'weight': {"value": 3.5, "unit": "kg"}
  /// - 'vaccine': {"vaccine_name": "종합백신", "next_date": "2026-06-01"}
  /// - 'hospital': {"clinic": "행복동물병원", "diagnosis": "피부염"}

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await _createAlarmsTable(db);
    }
    if (oldVersion < 3) {
      try {
        await db.execute('ALTER TABLE alarms ADD COLUMN alarm_days TEXT');
      } catch (_) {}
    }
    if (oldVersion < 4) {
      try {
        await db.execute('ALTER TABLE pets ADD COLUMN weight REAL');
      } catch (_) {}
      try {
        await db.execute('ALTER TABLE pets ADD COLUMN microchip_id TEXT');
      } catch (_) {}
      try {
        await db.execute('ALTER TABLE pets ADD COLUMN reg_number TEXT');
      } catch (_) {}
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
        alarm_days   TEXT,
        created_at   TEXT NOT NULL,
        FOREIGN KEY (pet_id) REFERENCES pets(id) ON DELETE CASCADE
      )
    ''');
  }
}
