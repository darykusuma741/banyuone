import 'package:get/get.dart';

import '../../../../presentation/bansos/controllers/bansos.controller.dart';

class BansosControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BansosController());
  }
}
