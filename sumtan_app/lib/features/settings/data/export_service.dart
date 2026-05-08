import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/database/database_helper.dart';

class ExportService {
  static const int schemaVersion = 1;

  final _db = DatabaseHelper.instance;

  Future<File> exportZip({
    void Function(double progress, String message)? onProgress,
  }) async {
      File? zipFile;
    try {
      void progress(double value, String message) {
        onProgress?.call(value.clamp(0.0, 1.0).toDouble(), message);
      }

      progress(0.05, 'DB 데이터 읽는 중...');

      final db = await _db.database;
      final pets = await db.query('pets', orderBy: 'id ASC');
      final records = await db.query('records', orderBy: 'recorded_at ASC');
      final alarms = await db.query('alarms', orderBy: 'id ASC');
      final prefs = await SharedPreferences.getInstance();
      final exportedAt = DateTime.now().toUtc().toIso8601String();

      progress(0.2, 'JSON 변환 중...');

      final archive = Archive();
      final exportedPets = <Map<String, dynamic>>[];
      final exportedRecords = <Map<String, dynamic>>[];
      final usedArchivePaths = <String>{};

      for (final row in pets) {
        final pet = Map<String, dynamic>.from(row);
        final imagePath = pet['profile_image_path'] as String?;
        if (imagePath != null && imagePath.isNotEmpty) {
          final archivePath = await _addFileToArchive(
            archive: archive,
            sourcePath: imagePath,
            preferredFolder: 'images',
            prefix: 'pet_${pet['id']}_profile',
            usedArchivePaths: usedArchivePaths,
          );
          if (archivePath != null) {
            pet['profile_image_path'] = archivePath;
          }
        }
        exportedPets.add(pet);
      }

      progress(0.4, '미디어 파일 수집 중...');

      for (final row in records) {
        final record = Map<String, dynamic>.from(row);
        final rawDataJson = row['data_json'] as String?;
        if (rawDataJson != null && rawDataJson.isNotEmpty) {
          final decoded = jsonDecode(rawDataJson);
          if (decoded is Map) {
            final data = Map<String, dynamic>.from(decoded);
            final media = data['media'];
            if (media is List) {
              final normalized = <Map<String, dynamic>>[];
              for (final item in media) {
                if (item is! Map) continue;
                final mediaItem = Map<String, dynamic>.from(item);
                final sourcePath = mediaItem['path'] as String?;
                if (sourcePath == null || sourcePath.isEmpty) continue;
                final type = mediaItem['type'] == 'video' ? 'video' : 'photo';
                final folder = type == 'video' ? 'videos' : 'images';
                final archivePath = await _addFileToArchive(
                  archive: archive,
                  sourcePath: sourcePath,
                  preferredFolder: folder,
                  prefix: 'record_${record['id']}',
                  usedArchivePaths: usedArchivePaths,
                );
                if (archivePath == null) continue;
                normalized.add({
                  ...mediaItem,
                  'type': type,
                  'file_name': p.basename(archivePath),
                  'path': archivePath,
                });
              }
              data['media'] = normalized;
            }
            record['data_json'] = data;
          }
        }
        exportedRecords.add(record);
      }

      progress(0.65, '백업 파일 구성 중...');

      final data = {
        'schema_version': schemaVersion,
        'exported_at': exportedAt,
        'pets': exportedPets,
        'records': exportedRecords,
        'alarms': alarms,
        'shared_preferences': _exportSharedPreferences(prefs),
      };
      final meta = {
        'app_name': '반려숨탄',
        'app_version': '1.0.0+1',
        'schema_version': schemaVersion,
        'exported_at': exportedAt,
        'platform': kIsWeb
            ? 'web'
            : Platform.isAndroid
                ? 'android'
                : Platform.isIOS
                    ? 'ios'
                    : Platform.operatingSystem,
        'total_pets': pets.length,
        'total_records': records.length,
        'total_alarms': alarms.length,
      };

      _addJsonFile(archive, 'data.json', data);
      _addJsonFile(archive, 'meta.json', meta);

      progress(0.85, 'ZIP 압축 중...');

      final encoded = ZipEncoder().encode(archive);
      if (encoded == null) {
        throw Exception('ZIP 파일을 생성하지 못했어요.');
      }

      final tempDir = await getTemporaryDirectory();
      final stamp = _backupStamp(DateTime.now());
      zipFile = File(p.join(tempDir.path, '반려숨탄_백업_$stamp.zip'));
      await zipFile.writeAsBytes(encoded, flush: true);

      progress(1.0, '완료!');
      return zipFile;
    } catch (error) {
      if (zipFile != null && await zipFile.exists()) {
        await zipFile.delete();
      }
      throw Exception('내보내기 실패: $error');
    }
  }

  Future<void> exportAndShare({
    void Function(double progress, String message)? onProgress,
  }) async {
    final file = await exportZip(onProgress: onProgress);
    await Share.shareXFiles(
      [XFile(file.path)],
      subject: '반려숨탄 데이터 백업',
      text: '반려숨탄 앱 데이터 백업 파일입니다.',
    );
  }

  Future<String?> _addFileToArchive({
    required Archive archive,
    required String sourcePath,
    required String preferredFolder,
    required String prefix,
    required Set<String> usedArchivePaths,
  }) async {
    final file = File(sourcePath);
    if (!await file.exists()) return null;

    final ext = p.extension(sourcePath).isEmpty ? '.dat' : p.extension(sourcePath);
    var fileName = '${_safeName(prefix)}$ext';
    var archivePath = '$preferredFolder/$fileName';
    var index = 1;
    while (usedArchivePaths.contains(archivePath)) {
      fileName = '${_safeName(prefix)}_$index$ext';
      archivePath = '$preferredFolder/$fileName';
      index++;
    }
    usedArchivePaths.add(archivePath);

    archive.addFile(ArchiveFile(
      archivePath,
      await file.length(),
      await file.readAsBytes(),
    ));
    return archivePath;
  }

  void _addJsonFile(Archive archive, String name, Map<String, dynamic> data) {
    final bytes = utf8.encode(const JsonEncoder.withIndent('  ').convert(data));
    archive.addFile(ArchiveFile(name, bytes.length, bytes));
  }

  Map<String, Object?> _exportSharedPreferences(SharedPreferences prefs) {
    final result = <String, Object?>{};
    for (final key in prefs.getKeys()) {
      result[key] = prefs.get(key);
    }
    return result;
  }

  String _backupStamp(DateTime now) {
    String two(int value) => value.toString().padLeft(2, '0');
    return '${now.year}${two(now.month)}${two(now.day)}_${two(now.hour)}${two(now.minute)}';
  }

  String _safeName(String value) =>
      value.replaceAll(RegExp(r'[^A-Za-z0-9_-]+'), '_');
}
