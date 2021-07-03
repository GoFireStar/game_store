part of dashboard;

class DashboardController extends GetxController {
  final _productService = ProductService();
  final _userService = UserService();

  late final User user;
  late final List<Product> popularGame;
  late final List<Product> newestGame;

  @override
  void onInit() {
    super.onInit();

    user = _userService.getUserLogin();
    popularGame = _productService.getPopularGame();
    newestGame = _productService.getNewestGame();
  }
}
