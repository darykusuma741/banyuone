import 'package:banyuone/data/model/inventory_item.model.dart';
import 'package:banyuone/data/service/inventory_item.service.dart';
import 'package:get/get.dart';

class InventoryItemMainController extends GetxController {
  InventoryItemService inventoryItemService = InventoryItemService();
  Rx<List<InventoryItemModel>> listItem = Rx([]);

  Future getData() async {
    try {
      listItem.value = await inventoryItemService.getData();
    } catch (e) {
      print(e);
    }
  }

  Future updateData(InventoryItemModel data) async {
    try {
      await inventoryItemService.updateData(data);
      listItem.value = listItem.value.map((e) {
        return (data.id == e.id) ? data : e;
      }).toList();
    } catch (e) {
      print(e);
    }
  }
}
