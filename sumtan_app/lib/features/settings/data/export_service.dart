import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../../core/database/database_helper.dart';

class ExportService {
  final _db = DatabaseHelper.instance;

  Future<File> exportZip() async {
    final db = await _db.database;
    final pets = await db.query('pets', orderBy: 'id ASC');
    final records = await db.query('records', orderBy: 'recorded_at ASC');
    final archive = Archive();
    final exportRecords = <Map<String, dynamic>>[];

    for (final row in records) {
      final record = Map<String, dynamic>.from(row);
      final dataJson = row['data_json'] as String?;
      if (dataJson != null) {
        final data = jsonDecode(dataJson) as Map<String, dynamic>;
        final media = data['media'];
        if (media is List) {
          final normalized = <Map<String, dynamic>>[];
          for (final item in media) {
            if (item is! Map) continue;
            final path = item['path'] as String?;
            final fileName = item['file_name'] as String? ??
                (path == null ? null : p.basename(path));
            if (fileName == null) continue;
            normalized.add({
              'type': item['type'],
              'path': 'media/$fileName',
              'file_name': fileName,
            });
            if (path != null) {
              final file = File(path);
              if (await file.exists()) {
                archive.addFile(ArchiveFile(
                  'media/$fileName',
                  await file.length(),
                  await file.readAsBytes(),
                ));
              }
            }
          }
          data['media'] = normalized;
        }
        record['data_json'] = data;
      }
      exportRecords.add(record);
    }

    final payload = const JsonEncoder.withIndent('  ').convert({
      'exported_at': DateTime.now().toIso8601String(),
      'pets': pets,
      'records': exportRecords,
    });
    archive.addFile(ArchiveFile('data.json', utf8.encode(payload).length, utf8.encode(payload)));

    final encoded = ZipEncoder().encode(archive)!;
    final now = DateTime.now();
    final stamp = '${now.year.toString().padLeft(4, '0')}'
        '${now.month.toString().padLeft(2, '0')}'
        '${now.day.toString().padLeft(2, '0')}';
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'sumtan_export_$stamp.zip'));
    return file.writeAsBytes(encoded, flush: true);
  }
}
