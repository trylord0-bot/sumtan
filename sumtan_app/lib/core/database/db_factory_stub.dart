import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void initDatabaseFactory() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<String> getDbPath(String name) async =>
    join(await getDatabasesPath(), name);
