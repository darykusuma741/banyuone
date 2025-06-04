import 'package:banyuone/controllers/inventory_item.main.controller.dart';
import 'package:banyuone/data/model/inventory_item.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InventoryRequestController extends GetxController {
  InventoryItemMainController inventoryItemMainCtr = Get.put(InventoryItemMainController());
  Rxn<InventoryItemModel?> itemSelect = Rxn(Get.arguments);
  Rxn<String?> itemSelectErr = Rxn();

  Rxn<String?> tindakanSelect = Rxn();
  Rxn<String?> tindakanSelectErr = Rxn();

  Rx<TextEditingController> jumlahCtr = Rx(TextEditingController());
  Rxn<String?> jumlahErr = Rxn();

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
    // inventoryItemMainCtr.getData();
  }

  void onHandleSave() {
    if (!validation()) return;
    int stok = itemSelect.value!.stok;
    int jumlah = int.parse(jumlahCtr.value.text);
    if (tindakanSelect.value == "Pinjam" && itemSelect.value!.stok < jumlah) {
      jumlahErr.value = "Jumlah melebihi dari stok (Stok saat ini ${itemSelect.value!.stok} item)";
      return;
    }

    final itemYangLagiDipinjam = itemSelect.value!.stokAwal - itemSelect.value!.stok;
    if (tindakanSelect.value == "Mengembalikan" && jumlah > itemYangLagiDipinjam) {
      jumlahErr.value = "Jumlah tersebut tidak valid. Karena melebihi stok awal";
      return;
    }

    stok = tindakanSelect.value == "Mengembalikan" ? stok + jumlah : stok - jumlah;

    Get.back();
    inventoryItemMainCtr.updateData(itemSelect.value!.copyWith(stok: stok));
  }

  bool validation() {
    bool next = true;
    if (itemSelect.value == null) {
      next = false;
      itemSelectErr.value = "Harap memilih barang";
    }
    if (tindakanSelect.value == null) {
      next = false;
      tindakanSelectErr.value = "Harap memilih tindakan";
    }
    if (jumlahCtr.value.text.isEmpty) {
      next = false;
      jumlahErr.value = "Harap masukkan jumlah";
    } else if (int.tryParse(jumlahCtr.value.text) == null) {
      next = false;
      jumlahErr.value = "Jumlah tidak sesuai";
    } else if (int.tryParse(jumlahCtr.value.text)! <= 0) {
      next = false;
      jumlahErr.value = "Jumlah kurang dari 0";
    }

    return next;
  }
}
