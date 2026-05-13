import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PurchaseSecureStorage {
  // 난독화 권장: 프로덕션 빌드 시 ProGuard/R8 난독화 적용
  static const _hmacKey = 'sumtan_iap_h8x7k2m9n3p5q1r6_2024';

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  String computeSignature(String id, String productId, String purchasedAt) {
    final message = '$id|$productId|$purchasedAt';
    final key = utf8.encode(_hmacKey);
    final bytes = utf8.encode(message);
    return Hmac(sha256, key).convert(bytes).toString();
  }

  Future<void> saveSignature(String id, String signature) =>
      _storage.write(key: 'sig_$id', value: signature);

  Future<String?> readSignature(String id) =>
      _storage.read(key: 'sig_$id');

  Future<void> markConsumed(String id) =>
      _storage.write(key: 'consumed_$id', value: 'true');

  Future<bool> isConsumed(String id) async {
    final v = await _storage.read(key: 'consumed_$id');
    return v == 'true';
  }
}
