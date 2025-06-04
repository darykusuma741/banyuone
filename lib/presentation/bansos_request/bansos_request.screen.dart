import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/bansos_request/form/bansos_request.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/bansos_request.controller.dart';

class BansosRequestScreen extends GetView<BansosRequestController> {
  const BansosRequestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'Usulan Bansos',
      ),
      backgroundColor: ColorsName.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          spacing: 16.h,
          children: [
            BansosRequestForm(),
            ButtonComponent(
              title: 'Simpan',
              bgColor: ColorsName.darkBlueGray,
              style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
              onTap: controller.onHandleSave,
            ),
          ],
        ),
      ),
    );
  }
}
