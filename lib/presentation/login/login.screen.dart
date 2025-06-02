import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/image_assets.dart';
import 'package:banyuone/presentation/login/login.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/login.controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 116.h),
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(width: 57.w),
                  Image.asset(ImageAssets.logo, width: 73.w),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5.h,
                    children: [
                      Text('BanyuOne', style: BaseText.darkBlueGray.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w800)),
                      Text('Welcome back!', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400)),
                      Text('Glad to see you, Again!', style: BaseText.darkBlueGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 115.h),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
