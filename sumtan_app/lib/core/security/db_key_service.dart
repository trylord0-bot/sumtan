import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class DbKeyService {
  static const _keyName = 'sumtan_db_key_v1';

  // Android/iOS에서만 암호화 키를 생성·저장한다.
  // 웹·데스크톱은 빈 문자열 반환 → 암호화 미적용.
  static Future<String> getOrCreateKey() async {
    if (kIsWeb) return '';
    if (!Platform.isAndroid && !Platform.isIOS) return '';

    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
    );

    var key = await storage.read(key: _keyName);
    if (key == null) {
      final rng = Random.secure();
      final bytes = List.generate(32, (_) => rng.nextInt(256));
      key = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
      await storage.write(key: _keyName, value: key);
    }
    return key;
  }
}
