import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sqflite_common/sqflite.dart' show databaseFactory;
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void initDatabaseFactory() {
  if (Platform.isAndroid || Platform.isIOS) {
    databaseFactory = sqflite.databaseFactorySqflitePlugin;
    return;
  }

  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<String> getDbPath(String name) async =>
    join(await databaseFactory.getDatabasesPath(), name);
