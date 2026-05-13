import 'package:sqflite_common/sqflite.dart';

import 'purchase_secure_storage.dart';

class PurchaseTransaction {
  final String id;
  final String productId;
  final String purchasedAt;
  final String status;
  final String signature;

  const PurchaseTransaction({
    required this.id,
    required this.productId,
    required this.purchasedAt,
    this.status = 'pending',
    this.signature = '',
  });

  factory PurchaseTransaction.fromMap(Map<String, dynamic> map) =>
      PurchaseTransaction(
        id: map['id'] as String,
        productId: map['product_id'] as String,
        purchasedAt: map['purchased_at'] as String,
        status: map['status'] as String,
        signature: map['signature'] as String,
      );
}

class PurchaseTransactionDao {
  final Database _db;
  final PurchaseSecureStorage _storage;

  PurchaseTransactionDao(this._db, this._storage);

  Future<void> insert(PurchaseTransaction tx) async {
    final signature =
        _storage.computeSignature(tx.id, tx.productId, tx.purchasedAt);
    await _db.insert(
      'purchase_transactions',
      {
        'id': tx.id,
        'product_id': tx.productId,
        'purchased_at': tx.purchasedAt,
        'status': tx.status,
        'signature': signature,
      },
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
    await _storage.saveSignature(tx.id, signature);
  }

  Future<List<PurchaseTransaction>> loadPending() async {
    final rows = await _db.query(
      'purchase_transactions',
      where: 'status = ?',
      whereArgs: ['pending'],
    );

    final valid = <PurchaseTransaction>[];
    for (final row in rows) {
      final tx = PurchaseTransaction.fromMap(row);

      // 1. DB signature 재계산 일치 여부
      final expected =
          _storage.computeSignature(tx.id, tx.productId, tx.purchasedAt);
      if (tx.signature != expected) continue;

      // 2. SecureStorage 서명 교차 일치 여부
      final stored = await _storage.readSignature(tx.id);
      if (stored != expected) continue;

      // 3. SecureStorage consumed 상태 → consumed이면 DB도 강제 업데이트 후 제외
      if (await _storage.isConsumed(tx.id)) {
        await _db.update(
          'purchase_transactions',
          {'status': 'consumed'},
          where: 'id = ?',
          whereArgs: [tx.id],
        );
        continue;
      }

      valid.add(tx);
    }
    return valid;
  }

  Future<void> markConsumed(String id) async {
    await _db.update(
      'purchase_transactions',
      {'status': 'consumed'},
      where: 'id = ?',
      whereArgs: [id],
    );
    await _storage.markConsumed(id);
  }
}
