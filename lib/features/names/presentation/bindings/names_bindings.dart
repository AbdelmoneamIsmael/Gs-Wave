import 'package:get/get.dart';
import 'package:gtv/features/names/presentation/controller/name_controller.dart';

class NamesBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<NameController>(NameController());
  }

} 