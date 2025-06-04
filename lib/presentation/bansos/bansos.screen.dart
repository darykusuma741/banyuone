import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/bansos/form_search/bansos.form.dart';
import 'package:banyuone/presentation/bansos/result_search/bansos.result_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/bansos.controller.dart';

class BansosScreen extends GetView<BansosController> {
  const BansosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'Bansos',
        actions: [
          IconButton(onPressed: () => Get.toNamed(Routes.BANSOS_REQUEST), icon: Icon(Icons.add, color: ColorsName.darkBlueGray)),
        ],
      ),
      backgroundColor: ColorsName.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.h,
          children: [
            BansosForm(),
            SizedBox(),
            ButtonComponent(
              title: 'Cari',
              bgColor: ColorsName.darkBlueGray,
              style: BaseText.white.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
              onTap: controller.onHandleSearch,
            ),
            BansosResultSearch(),
          ],
        ),
      ),
    );
  }
}
