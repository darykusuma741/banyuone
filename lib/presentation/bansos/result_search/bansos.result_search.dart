import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/bansos/controllers/bansos.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BansosResultSearch extends GetView<BansosController> {
  const BansosResultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hasil pencarian',
          style: BaseText.darkBlueGray.copyWith(fontSize: 14.sp, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15.h,
          children: [
            BansosResultSearchItem(),
            BansosResultSearchItem(),
            BansosResultSearchItem(),
            BansosResultSearchItem(),
            BansosResultSearchItem(),
          ],
        )
      ],
    );
  }
}

class BansosResultSearchItem extends StatelessWidget {
  const BansosResultSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: ColorsName.white,
        border: Border.all(color: ColorsName.darkBlueGray, width: 1.0),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(3.0, 4.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600)),
              SizedBox(height: 2.h),
              Text('Justin Suryo', style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp)),
              SizedBox(height: 10.h),
              Text('NIK', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600)),
              SizedBox(height: 2.h),
              Text('9274728192001', style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp)),
            ],
          ),
          SizedBox(
            width: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Umur', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 2.h),
                Text('29 Tahun', style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp)),
                SizedBox(height: 10.h),
                Text('Priode', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 2.h),
                Text('2029', style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
