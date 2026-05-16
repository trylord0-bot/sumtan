import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as enc;

/// 백업 파일 자동 암호화 유틸리티 (AES-256-CBC + HMAC-SHA256).
/// 사용자 비밀번호 없이 코드 내부 키를 사용한다.
/// 저장 형식: HMAC(32) | IV(16) | ciphertext
class BackupCrypto {
  // ── 난독화 키 블록 ─────────────────────────────────────────────────────────
  // AES-256 암호화 키: _ka XOR _kb (각각 무작위 바이트 배열)
  // ignore: prefer_const_declarations
  static const _ka = <int>[
    0xA1, 0x5D, 0x3F, 0x82, 0x6C, 0xE4, 0x90, 0x28,
    0x15, 0xCB, 0x47, 0xFA, 0x7E, 0x39, 0xB5, 0x03,
    0xD6, 0x4A, 0x71, 0xC8, 0x3B, 0x9F, 0x25, 0x58,
    0xE2, 0x06, 0x8D, 0x1A, 0x4F, 0x97, 0x60, 0xBC,
  ];
  // ignore: prefer_const_declarations
  static const _kb = <int>[
    0xDD, 0x63, 0x96, 0x96, 0x94, 0xCF, 0xCD, 0xCE,
    0x9F, 0x8C, 0x86, 0x69, 0x71, 0xEC, 0xD7, 0xBD,
    0xE7, 0x3C, 0xDD, 0x20, 0x64, 0x9B, 0xB8, 0x9F,
    0xAA, 0xB5, 0xA3, 0x60, 0x96, 0x81, 0xE5, 0xF0,
  ];

  /// AES 암호화 키 복원 (_ka XOR _kb = 실제 32바이트 키)
  static Uint8List get _encKey =>
      Uint8List.fromList(List.generate(32, (i) => _ka[i] ^ _kb[i]));

  /// MAC 키: AES 키의 각 바이트를 좌로 3비트 순환 후 0xA5 XOR
  static Uint8List _macKey(Uint8List k) =>
      Uint8List.fromList(k.map((b) => ((b << 3 | b >> 5) ^ 0xA5) & 0xFF).toList());

  // ── 공개 인터페이스 ────────────────────────────────────────────────────────

  /// [plain]을 내부 키로 암호화. 반환: HMAC(32)|IV(16)|ciphertext
  static Uint8List encrypt(List<int> plain) {
    final kEnc = _encKey;
    final kMac = _macKey(kEnc);
    final iv = _randomBytes(16);

    final encrypter = enc.Encrypter(
      enc.AES(enc.Key(kEnc), mode: enc.AESMode.cbc),
    );
    final cipher = encrypter
        .encryptBytes(plain, iv: enc.IV(Uint8List.fromList(iv)))
        .bytes;

    final mac = Hmac(sha256, kMac).convert([...iv, ...cipher]).bytes;
    return Uint8List.fromList([...mac, ...iv, ...cipher]);
  }

  /// [data] (HMAC|IV|ciphertext)를 내부 키로 복호화.
  /// MAC 불일치 시 예외 발생.
  static Uint8List decrypt(List<int> data) {
    if (data.length < 32 + 16 + 16) {
      throw Exception('암호화 데이터가 손상되었습니다.');
    }
    final mac = data.sublist(0, 32);
    final iv = data.sublist(32, 48);
    final cipher = data.sublist(48);

    final kEnc = _encKey;
    final kMac = _macKey(kEnc);

    final expectedMac =
        Hmac(sha256, kMac).convert([...iv, ...cipher]).bytes;
    if (!_constEq(mac, expectedMac)) {
      throw Exception('백업 파일이 손상되었거나 올바르지 않은 형식입니다.');
    }

    final encrypter = enc.Encrypter(
      enc.AES(enc.Key(kEnc), mode: enc.AESMode.cbc),
    );
    return Uint8List.fromList(encrypter.decryptBytes(
      enc.Encrypted(Uint8List.fromList(cipher)),
      iv: enc.IV(Uint8List.fromList(iv)),
    ));
  }

  static bool _constEq(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    var d = 0;
    for (var i = 0; i < a.length; i++) {
      d |= a[i] ^ b[i];
    }
    return d == 0;
  }

  static Uint8List _randomBytes(int count) =>
      Uint8List.fromList(
          List.generate(count, (_) => Random.secure().nextInt(256)));
}
