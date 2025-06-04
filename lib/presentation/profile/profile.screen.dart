import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/profile/form/profile.form.dart';
import 'package:banyuone/presentation/profile/photo/profile.photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        divider: false,
      ),
      backgroundColor: ColorsName.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.h),
              ProfilePhoto(),
              SizedBox(height: 50.h),
              ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
