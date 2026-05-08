import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseService {
  // Google Play / App Store 에 등록할 상품 ID (소비성 상품)
  static const String exportProductId = 'export_data_per_use';

  final _iap = InAppPurchase.instance;

  Future<bool> isAvailable() => _iap.isAvailable();

  Future<ProductDetails?> loadExportProduct() async {
    final response = await _iap.queryProductDetails({exportProductId});
    return response.productDetails.firstOrNull;
  }

  Future<void> buy(ProductDetails product) async {
    final param = PurchaseParam(productDetails: product);
    await _iap.buyConsumable(purchaseParam: param);
  }

  Future<void> completePurchase(PurchaseDetails purchase) =>
      _iap.completePurchase(purchase);

  Stream<List<PurchaseDetails>> get purchaseStream => _iap.purchaseStream;
}
