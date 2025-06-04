import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/inventory/item/inventory.items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/inventory.controller.dart';

class InventoryScreen extends GetView<InventoryController> {
  const InventoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'Inventory',
      ),
      backgroundColor: ColorsName.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.h,
          children: [
            InventoryItems(),
            ButtonComponent(
              title: 'Kelola Inventory',
              bgColor: ColorsName.darkBlueGray,
              style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
              onTap: () => Get.toNamed(Routes.INVENTORY_REQUEST),
            ),
          ],
        ),
      ),
    );
  }
}
