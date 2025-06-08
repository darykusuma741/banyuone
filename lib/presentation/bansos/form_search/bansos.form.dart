import 'package:banyuone/common/components/custom_dropdown.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/bansos/controllers/bansos.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BansosForm extends GetView<BansosController> {
  const BansosForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final styleLabel = BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
      final borderColor = ColorsName.paleBlue;
      final fillColor = ColorsName.lightGray;
      final hintStyle = BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400);

      return Column(
        spacing: 16.h,
        children: [
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: false,
            styleTextHint: hintStyle,
            // error: controller.requestTypeErr.value,
            selectedItem: controller.tahunPeriode.value,
            label: 'Tahun Priode',
            items: ['2020', '2021', '2022', '2023', '2024', '2025', '2026', '2027'],
            customContent: (p0) => p0 == null ? 'Pilih yang sesuai' : '$p0 ',
            onChanged: (value) {
              controller.tahunPeriode.value = value;
              controller.filter();
              // controller.requestTypeErr.value = null;
              // controller.emptyCheck();
              // controller.emptyAttendanceDate();
            },
          ),
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: false,
            styleTextHint: hintStyle,
            // error: controller.requestTypeErr.value,
            selectedItem: controller.rt.value,
            label: 'RT',
            items: ['1', '2', '3', '4', '5'],
            customContent: (p0) => p0 == null ? 'Pilih RT' : '$p0 ',
            onChanged: (value) {
              controller.rt.value = value;
              controller.filter();
              // controller.requestType.value = value;
              // controller.requestTypeErr.value = null;
              // controller.emptyCheck();
              // controller.emptyAttendanceDate();
            },
          ),
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: false,
            styleTextHint: hintStyle,
            // error: controller.requestTypeErr.value,
            selectedItem: controller.rw.value,
            label: 'RW',
            items: ['1', '2', '3', '4', '5'],
            customContent: (p0) => p0 == null ? 'Pilih RW' : '$p0 ',
            onChanged: (value) {
              controller.rw.value = value;
              controller.filter();

              // controller.requestTypeErr.value = null;
              // controller.emptyCheck();
              // controller.emptyAttendanceDate();
            },
          ),
        ],
      );
    });
  }
}
