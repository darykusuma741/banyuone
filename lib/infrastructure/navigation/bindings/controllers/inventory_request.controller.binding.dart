import 'package:get/get.dart';

import '../../../../presentation/inventory_request/controllers/inventory_request.controller.dart';

class InventoryRequestControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InventoryRequestController());
  }
}
