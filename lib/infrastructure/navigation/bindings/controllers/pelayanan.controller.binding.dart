import 'package:get/get.dart';

import '../../../../presentation/pelayanan/controllers/pelayanan.controller.dart';

class PelayananControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PelayananController());
  }
}
