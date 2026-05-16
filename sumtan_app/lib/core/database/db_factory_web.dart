import 'package:sqflite_common/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

void initDatabaseFactory() {
  databaseFactory = databaseFactoryFfiWeb;
}

Future<String> getDbPath(String name) async => name;

Future<String> getEncryptionKey() async => '';

// 웹은 암호화를 지원하지 않으므로 no-op
Future<bool> migrateToEncryptedIfNeeded(
  String path,
  String key,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) async =>
    true;

Future<Database> openApplicationDatabase(
  String path,
  String key,
  int version,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) =>
    databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: version,
        onConfigure: (db) => db.execute('PRAGMA foreign_keys = ON'),
        onCreate: onCreate,
        onUpgrade: onUpgrade,
      ),
    );
