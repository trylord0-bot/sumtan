import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common/sqflite.dart';

import '../../../core/database/database_helper.dart';
import '../../../core/security/backup_crypto.dart';

class ImportService {
  static const int supportedSchemaVersion = 1;

  final _db = DatabaseHelper.instance;

  Future<void> importZip({
    required String zipFilePath,
    void Function(double progress, String message)? onProgress,
  }) async {
    Directory? extractDir;
    try {
      void progress(double value, String message) {
        onProgress?.call(value.clamp(0.0, 1.0).toDouble(), message);
      }

      progress(0.05, 'ZIP 파일 읽는 중...');

      final bytes = await File(zipFilePath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(bytes);
      final tempDir = await getTemporaryDirectory();
      extractDir = Directory(p.join(
        tempDir.path,
        'sumtan_import_${DateTime.now().millisecondsSinceEpoch}',
      ));
      await extractDir.create(recursive: true);

      progress(0.15, '파일 압축 해제 중...');

      for (final entry in archive) {
        final targetPath = _safeExtractPath(extractDir.path, entry.name);
        if (targetPath == null) continue;
        if (entry.isFile) {
          final outFile = File(targetPath);
          await outFile.create(recursive: true);
          await outFile.writeAsBytes(entry.content as List<int>, flush: true);
        } else {
          await Directory(targetPath).create(recursive: true);
        }
      }

      progress(0.25, '데이터 검증 중...');

      final metaFile = File(p.join(extractDir.path, 'meta.json'));
      if (!await metaFile.exists()) {
        throw Exception('유효하지 않은 백업 파일입니다.');
      }

      final meta = jsonDecode(await metaFile.readAsString());
      if (meta is! Map) throw Exception('meta.json 형식이 올바르지 않습니다.');
      final schemaVersion = (meta['schema_version'] as num?)?.toInt() ?? 0;
      if (schemaVersion > supportedSchemaVersion) {
        throw Exception(
          '지원하지 않는 백업 버전입니다. 앱을 최신 버전으로 업데이트해 주세요. '
          '(백업 버전: $schemaVersion, 지원 버전: $supportedSchemaVersion)',
        );
      }

      // 암호화 백업(data.enc)이면 복호화 후 data.json으로 저장.
      // 구버전 미암호화 백업(data.json)도 그대로 처리.
      final isEncrypted = meta['encrypted'] == true;
      if (isEncrypted) {
        progress(0.32, '데이터 복호화 중...');
        final encFile = File(p.join(extractDir.path, 'data.enc'));
        if (!await encFile.exists()) {
          throw Exception('암호화 데이터 파일(data.enc)이 없습니다.');
        }
        final plainBytes = BackupCrypto.decrypt(await encFile.readAsBytes());
        await File(p.join(extractDir.path, 'data.json'))
            .writeAsBytes(plainBytes, flush: true);
      }

      progress(0.35, 'JSON 데이터 파싱 중...');

      final dataFile = File(p.join(extractDir.path, 'data.json'));
      if (!await dataFile.exists()) {
        throw Exception('유효하지 않은 백업 파일입니다.');
      }

      final decodedData = jsonDecode(await dataFile.readAsString());
      if (decodedData is! Map) {
        throw Exception('data.json 형식이 올바르지 않습니다.');
      }
      final data = Map<String, dynamic>.from(decodedData);

      final appDir = await getApplicationDocumentsDirectory();
      await _clearImportedMediaFolders(appDir);
      final importedPets = await _restorePets(data['pets'], extractDir, appDir);
      final importedRecords =
          await _restoreRecords(data['records'], extractDir, appDir);
      final importedAlarms = _rows(data['alarms']);

      progress(0.55, '기존 데이터 초기화 중...');

      final db = await _db.database;
      await db.transaction((txn) async {
        await txn.delete('alarms');
        await txn.delete('records');
        await txn.delete('pets');
      });

      progress(0.7, '데이터 복원 중...');

      await db.transaction((txn) async {
        for (final pet in importedPets) {
          await txn.insert('pets', pet,
              conflictAlgorithm: ConflictAlgorithm.replace);
        }
        for (final record in importedRecords) {
          await txn.insert(
            'records',
            record,
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
        for (final alarm in importedAlarms) {
          await txn.insert(
            'alarms',
            alarm,
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      });

      progress(0.9, '설정값 복원 중...');

      await _restoreSharedPreferences(data['shared_preferences']);

      progress(1.0, '가져오기 완료!');
    } catch (error) {
      throw Exception('가져오기 실패: $error');
    } finally {
      if (extractDir != null && await extractDir.exists()) {
        await extractDir.delete(recursive: true);
      }
    }
  }

  Future<void> _clearImportedMediaFolders(Directory appDir) async {
    for (final folder in ['images', 'videos', 'record_media']) {
      final dir = Directory(p.join(appDir.path, folder));
      if (await dir.exists()) {
        await dir.delete(recursive: true);
      }
    }
  }

  Future<List<Map<String, dynamic>>> _restorePets(
    Object? rawPets,
    Directory extractDir,
    Directory appDir,
  ) async {
    final result = <Map<String, dynamic>>[];
    for (final row in _rows(rawPets)) {
      final imagePath = row['profile_image_path'] as String?;
      if (imagePath != null && imagePath.isNotEmpty) {
        final restored = await _restoreArchiveFile(
          archivePath: imagePath,
          extractDir: extractDir,
          appDir: appDir,
          targetFolder: 'images',
        );
        if (restored != null) row['profile_image_path'] = restored;
      }
      result.add(row);
    }
    return result;
  }

  Future<List<Map<String, dynamic>>> _restoreRecords(
    Object? rawRecords,
    Directory extractDir,
    Directory appDir,
  ) async {
    final result = <Map<String, dynamic>>[];
    for (final row in _rows(rawRecords)) {
      final dataJson = row['data_json'];
      if (dataJson is Map) {
        final data = Map<String, dynamic>.from(dataJson);
        final media = data['media'];
        if (media is List) {
          final restoredMedia = <Map<String, dynamic>>[];
          for (final item in media) {
            if (item is! Map) continue;
            final mediaItem = Map<String, dynamic>.from(item);
            final archivePath = mediaItem['path'] as String?;
            final type = mediaItem['type'] == 'video' ? 'video' : 'photo';
            final restored = archivePath == null
                ? null
                : await _restoreArchiveFile(
                    archivePath: archivePath,
                    extractDir: extractDir,
                    appDir: appDir,
                    targetFolder: type == 'video' ? 'videos' : 'images',
                  );
            if (restored != null) {
              mediaItem['path'] = restored;
              mediaItem['file_name'] = p.basename(restored);
            }
            restoredMedia.add(mediaItem);
          }
          data['media'] = restoredMedia;
        }
        row['data_json'] = jsonEncode(data);
      } else if (dataJson != null) {
        row['data_json'] = dataJson.toString();
      }
      result.add(row);
    }
    return result;
  }

  Future<String?> _restoreArchiveFile({
    required String archivePath,
    required Directory extractDir,
    required Directory appDir,
    required String targetFolder,
  }) async {
    final safeSource = _safeExtractPath(extractDir.path, archivePath);
    if (safeSource == null) return null;
    final source = File(safeSource);
    if (!await source.exists()) return null;
    final targetDir = Directory(p.join(appDir.path, targetFolder));
    await targetDir.create(recursive: true);
    final target = File(p.join(targetDir.path, p.basename(archivePath)));
    await source.copy(target.path);
    return target.path;
  }

  List<Map<String, dynamic>> _rows(Object? raw) {
    if (raw is! List) return [];
    return raw
        .whereType<Map>()
        .map((row) => Map<String, dynamic>.from(row))
        .toList();
  }

  Future<void> _restoreSharedPreferences(Object? rawPrefs) async {
    if (rawPrefs is! Map) return;
    final prefs = await SharedPreferences.getInstance();
    for (final entry in rawPrefs.entries) {
      final key = entry.key.toString();
      final value = entry.value;
      if (value is bool) {
        await prefs.setBool(key, value);
      } else if (value is int) {
        await prefs.setInt(key, value);
      } else if (value is double) {
        await prefs.setDouble(key, value);
      } else if (value is String) {
        await prefs.setString(key, value);
      } else if (value is List) {
        await prefs.setStringList(key, value.map((e) => e.toString()).toList());
      }
    }
  }

  String? _safeExtractPath(String root, String archiveName) {
    final normalizedName = p.normalize(archiveName).replaceAll('\\', '/');
    if (p.isAbsolute(normalizedName) || normalizedName.startsWith('../')) {
      return null;
    }
    final target = p.normalize(p.join(root, normalizedName));
    final normalizedRoot = p.normalize(root);
    if (target != normalizedRoot && !p.isWithin(normalizedRoot, target)) {
      return null;
    }
    return target;
  }
}
