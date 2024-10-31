import 'package:get/get.dart';
import 'package:gtv/features/dial_page/presentation/controller/dial_controller.dart';

class DialBindings  extends Bindings{
  @override
  void dependencies() {
    Get.put<DialController>(DialController());
  }
}