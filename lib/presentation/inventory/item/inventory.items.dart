import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/data/model/inventory_item.model.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/inventory/controllers/inventory.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InventoryItems extends GetView<InventoryController> {
  const InventoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        spacing: 15.h,
        children: controller.inventoryItemMainCtr.listItem.value.map((e) {
          return InventoryItem(e);
        }).toList(),
      ),
    );
  }
}

class InventoryItem extends StatelessWidget {
  const InventoryItem(this.item, {super.key});
  final InventoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.INVENTORY_REQUEST, arguments: item),
      child: Container(
        color: Colors.white.withOpacity(.0),
        child: Row(
          children: [
            Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: ColorsName.paleBlue,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: (item.photo == null)
                    ? Center(
                        child: Text(
                          'Fotonya Kosong',
                          textAlign: TextAlign.center,
                          style: BaseText.darkBlueGray.copyWith(fontSize: 11.sp),
                        ),
                      )
                    : Image.network(item.photo!, fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.namaBarang, style: BaseText.darkBlueGray.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 5.h),
                Text('Stok: ${item.stok} dari ${item.stokAwal}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
