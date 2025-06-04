import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/home/header/home.header.dart';
import 'package:banyuone/presentation/home/informasi/home.informasi.dart';
import 'package:banyuone/presentation/home/menu/home.menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: ColorsName.iceBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomeHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        Container(
                          width: double.infinity,
                          height: 40.h,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(color: ColorsName.white, borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            children: [
                              Text('Selamat Datang, ', style: BaseText.slateGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500)),
                              Text('Indra', style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  HomeInformasi(),
                  SizedBox(height: 13.h),
                  HomeMenu(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
