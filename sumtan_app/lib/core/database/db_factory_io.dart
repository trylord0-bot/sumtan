import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_sqlcipher/sqflite.dart' as sqlcipher;

import '../security/db_key_service.dart';

bool get _isMobile => Platform.isAndroid || Platform.isIOS;

void initDatabaseFactory() {
  if (_isMobile) {
    databaseFactory = sqlcipher.databaseFactory;
    return;
  }
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<String> getDbPath(String name) async =>
    join(await databaseFactory.getDatabasesPath(), name);

Future<String> getEncryptionKey() => DbKeyService.getOrCreateKey();

// SQLite 파일 여부를 매직 바이트(헤더)로 판별한다.
// 암호화된 SQLCipher DB는 헤더가 다르므로 false를 반환한다.
bool _isPlainSqlite(File file) {
  if (!file.existsSync()) return false;
  final raf = file.openSync();
  final bytes = raf.readSync(16);
  raf.closeSync();
  const magic = [
    83, 81, 76, 105, 116, 101, 32, 102, 111, 114, 109, 97, 116, 32, 51, 0
  ];
  if (bytes.length < 16) return false;
  for (var i = 0; i < 16; i++) {
    if (bytes[i] != magic[i]) return false;
  }
  return true;
}

/// 기존 평문 SQLite를 암호화 SQLite로 1회 마이그레이션한다.
///
/// 반환값: 마이그레이션 완료(또는 불필요) → true, 실패 → false
Future<bool> migrateToEncryptedIfNeeded(
  String path,
  String key,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) async {
  // 모바일이 아니거나 키가 없으면 암호화 불필요
  if (!_isMobile || key.isEmpty) return true;

  final dbFile = File(path);
  if (!dbFile.existsSync()) return true; // 새 설치
  if (!_isPlainSqlite(dbFile)) return true; // 이미 암호화됨

  final tempPath = '$path.enc_migration';
  try {
    // 잔여 임시 파일 정리
    final tempFile = File(tempPath);
    if (tempFile.existsSync()) tempFile.deleteSync();

    // 평문 DB 읽기
    // SQLCipher는 password 없이 평문 SQLite를 그대로 열 수 있다.
    final plainDb = await sqlcipher.openDatabase(
      path,
      singleInstance: false,
    );
    final version = await plainDb.getVersion();
    final tableData = <String, List<Map<String, dynamic>>>{};
    for (final table in ['pets', 'records', 'alarms', 'purchase_transactions']) {
      try {
        tableData[table] = await plainDb.query(table);
      } catch (_) {
        tableData[table] = [];
      }
    }
    await plainDb.close();

    // 암호화 DB를 임시 경로에 생성
    final encDb = await sqlcipher.openDatabase(
      tempPath,
      version: version > 0 ? version : 5,
      password: key,
      singleInstance: false,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );
    await encDb.transaction((txn) async {
      for (final entry in tableData.entries) {
        for (final row in entry.value) {
          try {
            await txn.insert(
              entry.key,
              row,
              conflictAlgorithm: ConflictAlgorithm.replace,
            );
          } catch (_) {}
        }
      }
    });
    await encDb.close();

    // 파일 교체 (평문 삭제 → 임시 파일을 최종 경로로 이동)
    dbFile.deleteSync();
    File(tempPath).renameSync(path);
    return true;
  } catch (_) {
    // 실패 시 임시 파일 정리 후 다음 실행에서 재시도
    try {
      File(tempPath).deleteSync();
    } catch (_) {}
    return false;
  }
}

/// 앱 데이터베이스를 연다.
/// 모바일은 SQLCipher 암호화를 적용하고, 데스크톱은 일반 SQLite를 사용한다.
Future<Database> openApplicationDatabase(
  String path,
  String key,
  int version,
  Future<void> Function(Database, int) onCreate,
  Future<void> Function(Database, int, int) onUpgrade,
) async {
  if (_isMobile) {
    return sqlcipher.openDatabase(
      path,
      version: version,
      password: key.isNotEmpty ? key : null,
      onConfigure: (db) => db.execute('PRAGMA foreign_keys = ON'),
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );
  }
  return databaseFactory.openDatabase(
    path,
    options: OpenDatabaseOptions(
      version: version,
      onConfigure: (db) => db.execute('PRAGMA foreign_keys = ON'),
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    ),
  );
}
