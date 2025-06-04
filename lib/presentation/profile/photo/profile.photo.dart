import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/profile/controllers/profile.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePhoto extends GetView<ProfileController> {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(color: ColorsName.lightSilver, borderRadius: BorderRadius.circular(100.r), boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5.r),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlx-SUn5wSRImpcvECecZ1qeXLMzLK7_zb_LzV7xGu_Kku_NOtwxYE0fUQXsRzh44DjR4&usqp=CAU',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 5.0,
          right: 5.0,
          child: Container(
            width: 25.w,
            height: 25.h,
            decoration: BoxDecoration(
              color: ColorsName.darkBlueGray,
              borderRadius: BorderRadius.circular(100.r),
              // borderRadius: BorderRadius.circular(0.r),
            ),
            child: Center(
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
                size: 13.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
