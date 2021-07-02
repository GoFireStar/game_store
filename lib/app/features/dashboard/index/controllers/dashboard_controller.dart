part of dashboard;

class DashboardController extends GetxController {
  final _productService = ProductService();
  late final List<ProductResult> popularGame;
  late final List<ProductResult> newestGame;

  @override
  void onInit() {
    super.onInit();
    popularGame = _productService.getPopularGame();
    newestGame = _productService.getNewestGame();
  }
}
