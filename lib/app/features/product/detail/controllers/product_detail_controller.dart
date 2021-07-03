part of product_detail;

class ProductDetailController extends GetxController {
  final _productService = ProductService();
  late final Product product;

  @override
  void onInit() {
    super.onInit();
    product = _productService.getPopularGame()[1];
  }
}
