import 'package:banyuone/data/model/inventory_item.model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InventoryItemService {
  Future<List<InventoryItemModel>> getData() async {
    List<InventoryItemModel> data = [];

    final result = await FirebaseFirestore.instance.collection('inventoryItem').get();
    data = result.docs.map((e) {
      return InventoryItemModel.fromJson(e.data(), e.id);
    }).toList();
    return data;
  }

  Future updateData(InventoryItemModel data) async {
    await FirebaseFirestore.instance.collection('inventoryItem').doc(data.id).update(data.toJson());
  }
}
