import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/common/static/image_assets.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class HomeHeader extends GetView<HomeController> {
  const HomeHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 99.0,
      decoration: BoxDecoration(color: ColorsName.white),
      padding: EdgeInsets.only(top: 30.h, bottom: 12.h, right: 16.w, left: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageAssets.logo, width: 23.w),
          SizedBox(width: 11.91.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BanyuOne',
                style: BaseText.darkBlueGray.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5.h),
              Text(
                'Welcome Back',
                style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Expanded(child: Container()),
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Container(
              color: ColorsName.white,
              child: Icon(Icons.logout, color: ColorsName.darkBlueGray),
            ),
          ),
        ],
      ),
    );
  }
}
