import 'package:sqflite_common/sqflite.dart';

void initDatabaseFactory() => throw UnsupportedError('이 플랫폼은 지원되지 않습니다.');

Future<String> getDbPath(String name) =>
    throw UnsupportedError('이 플랫폼은 지원되지 않습니다.');

Future<String> getEncryptionKey() =>
    throw UnsupportedError('이 플랫폼은 지원되지 않습니다.');

Future<bool> migrateToEncryptedIfNeeded(
  String path,
  String key,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) =>
    throw UnsupportedError('이 플랫폼은 지원되지 않습니다.');

Future<Database> openApplicationDatabase(
  String path,
  String key,
  int version,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) =>
    throw UnsupportedError('이 플랫폼은 지원되지 않습니다.');
