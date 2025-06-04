import 'package:get/get.dart';

import '../../../../presentation/bansos_request/controllers/bansos_request.controller.dart';

class BansosRequestControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BansosRequestController());
  }
}
