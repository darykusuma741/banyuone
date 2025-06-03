import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/login/controllers/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Column(
        children: [
          TextFieldComponent(
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
            hintText: 'Enter your email',
          ),
          SizedBox(height: 10.w),
          TextFieldComponent(
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
            hintText: 'Enter your password',
          ),
          SizedBox(height: 30.h),
          ButtonComponent(
            title: 'Login',
            bgColor: ColorsName.darkBlueGray,
            style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
            onTap: controller.onHandleLogin,
          ),
          SizedBox(height: 10.h),
          ButtonComponent(
            title: 'About',
            bgColor: ColorsName.lightSilver,
            style: BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
