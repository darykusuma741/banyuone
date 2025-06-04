import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/profile/controllers/profile.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileForm extends GetView<ProfileController> {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final styleLabel = BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
    final hintStyle = BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        spacing: 12.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldComponent(
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            styleLabel: styleLabel,
            label: 'Nama',
            hintText: 'Masukkan Nama',
          ),
          TextFieldComponent(
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            styleLabel: styleLabel,
            label: 'Jabatan',
            hintText: 'Masukkan Jabatan',
          ),
          TextFieldComponent(
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            styleLabel: styleLabel,
            label: 'Nomor Hp',
            hintText: 'Masukkan Nomor Hp',
          ),
          SizedBox(height: 15.h),
          ButtonComponent(
            title: 'Simpan',
            bgColor: ColorsName.darkBlueGray,
            style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
            onTap: controller.onHandleSave,
          ),
          ButtonComponent(
            title: 'Hapus',
            bgColor: ColorsName.pastelRed,
            style: BaseText.darkRed.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
            onTap: () => Get.offAllNamed(Routes.LOGIN),
          ),
        ],
      ),
    );
  }
}
