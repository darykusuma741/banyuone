import 'package:banyuone/controllers/inventory_item.main.controller.dart';
import 'package:get/get.dart';

class InventoryController extends GetxController {
  InventoryItemMainController inventoryItemMainCtr = Get.put(InventoryItemMainController());

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getData() async {
    await inventoryItemMainCtr.getData();
  }
}
