import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/inventory/controllers/inventory.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InventoryItems extends GetView<InventoryController> {
  const InventoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9jqbilkC6dydxcbdbv-r4EfdWufqi6B0_Pw&s',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Proyektor', style: BaseText.darkBlueGray.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 5.h),
                Text('Stok: 2'),
              ],
            )
          ],
        )
      ],
    );
  }
}
