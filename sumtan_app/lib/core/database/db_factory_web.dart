import 'package:sqflite_common/sqflite.dart' show databaseFactory;
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

void initDatabaseFactory() {
  databaseFactory = databaseFactoryFfiWeb;
}

Future<String> getDbPath(String name) async => name;
