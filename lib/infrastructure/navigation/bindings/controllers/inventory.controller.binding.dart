import 'package:get/get.dart';

import '../../../../presentation/inventory/controllers/inventory.controller.dart';

class InventoryControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InventoryController());
  }
}
