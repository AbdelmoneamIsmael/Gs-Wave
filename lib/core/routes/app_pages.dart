
import 'package:get/get.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/features/home_page/presentation/bindings/home_bindings.dart';
import 'package:gtv/features/home_page/presentation/pages/home_screen.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.homePage;

  static const homePage = Routes.homePage;

  static final routes = [
    GetPage(
      name: Routes.homePage,
      page: () => const ApplicationHomeScreen(),
      binding: HomeBindings(),
    ),

  ];
}
