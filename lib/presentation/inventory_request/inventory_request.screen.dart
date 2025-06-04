import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/components/custom_dropdown.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/data/model/inventory_item.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/inventory_request.controller.dart';

class InventoryRequestScreen extends GetView<InventoryRequestController> {
  const InventoryRequestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final styleLabel = BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
    final borderColor = ColorsName.paleBlue;
    final fillColor = ColorsName.lightGray;
    final hintStyle = BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400);

    return Obx(() {
      String keteranganStok = "";
      if (controller.itemSelect.value != null) {
        keteranganStok = "(${controller.itemSelect.value!.stok} dari ${controller.itemSelect.value!.stokAwal})";
      }

      return CustomScaffold(
        appBar: CustomAppBar(
          title: 'Kelola Inventory',
        ),
        backgroundColor: ColorsName.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            spacing: 16.h,
            children: [
              CustomDropdown<InventoryItemModel>(
                borderColor: borderColor,
                fillColor: fillColor,
                labelStyle: styleLabel,
                styleTextHint: hintStyle,
                error: controller.itemSelectErr.value,
                selectedItem: controller.itemSelect.value,
                label: 'Pilih Barang',
                items: controller.inventoryItemMainCtr.listItem.value,
                customContent: (p0) => p0 == null ? 'Pilih yang sesuai' : p0.namaBarang,
                onChanged: (value) {
                  controller.itemSelect.value = value;
                  controller.itemSelectErr.value = null;
                  controller.jumlahErr.value = null;
                },
              ),
              CustomDropdown<String>(
                borderColor: borderColor,
                fillColor: fillColor,
                labelStyle: styleLabel,
                styleTextHint: hintStyle,
                error: controller.tindakanSelectErr.value,
                selectedItem: controller.tindakanSelect.value,
                label: 'Pilih Tindakan',
                items: ['Pinjam', 'Mengembalikan'],
                customContent: (p0) => p0 == null ? 'Pinjam / Mengembalikan' : '$p0 ',
                onChanged: (value) {
                  controller.tindakanSelect.value = value;
                  controller.tindakanSelectErr.value = null;
                },
              ),
              TextFieldComponent(
                label: 'Jumlah $keteranganStok',
                error: controller.jumlahErr.value,
                onChanged: (v) {
                  controller.jumlahErr.value = null;
                },
                styleLabel: styleLabel,
                borderColor: ColorsName.paleBlue,
                fillColor: ColorsName.lightGray,
                hintStyle: hintStyle,
                controller: controller.jumlahCtr.value,
                hintText: 'Contoh: 28',
              ),
              ButtonComponent(
                title: 'Simpan',
                bgColor: ColorsName.darkBlueGray,
                style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
                onTap: controller.onHandleSave,
              ),
            ],
          ),
        ),
      );
    });
  }
}
