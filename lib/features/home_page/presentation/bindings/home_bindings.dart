import 'package:get/get.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
 }