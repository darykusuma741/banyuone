import 'package:banyuone/common/components/custom_dropdown.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BansosRequestForm extends GetView<BansosRequestForm> {
  const BansosRequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    final styleLabel = BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
    final borderColor = ColorsName.paleBlue;
    final fillColor = ColorsName.lightGray;

    return Column(
      spacing: 16.h,
      children: [
        TextFieldComponent(
          label: 'Nomor Kartu Keluarga',
          styleLabel: styleLabel,
          borderColor: ColorsName.paleBlue,
          fillColor: ColorsName.lightGray,
          hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
          hintText: 'Isikan Nomor KK',
        ),
        TextFieldComponent(
          label: 'Nama Sesuai KTP',
          styleLabel: styleLabel,
          borderColor: ColorsName.paleBlue,
          fillColor: ColorsName.lightGray,
          hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
          hintText: 'Masukkan Nama Lengkap',
        ),
        TextFieldComponent(
          label: 'NIK',
          styleLabel: styleLabel,
          borderColor: ColorsName.paleBlue,
          fillColor: ColorsName.lightGray,
          hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
          hintText: 'Isikan Sesuai KTP',
        ),
        CustomDropdown<String>(
          borderColor: borderColor,
          fillColor: fillColor,
          labelStyle: styleLabel,
          required: false,
          // error: controller.requestTypeErr.value,
          // selectedItem: controller.requestType.value,
          label: 'Rt',
          items: ['Barang1', 'Barang2'],
          customContent: (p0) => p0 == null ? 'Pilih RT' : '$p0 ',
          onChanged: (value) {
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
          // error: controller.requestTypeErr.value,
          // selectedItem: controller.requestType.value,
          label: 'RW',
          items: ['Barang1', 'Barang2'],
          customContent: (p0) => p0 == null ? 'Pilih RW' : '$p0 ',
          onChanged: (value) {
            // controller.requestType.value = value;
            // controller.requestTypeErr.value = null;
            // controller.emptyCheck();
            // controller.emptyAttendanceDate();
          },
        ),
        TextFieldComponent(
          label: 'Tanggal Lahir',
          styleLabel: styleLabel,
          borderColor: ColorsName.paleBlue,
          fillColor: ColorsName.lightGray,
          hintStyle: BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400),
          hintText: 'dd/MM/YY',
        ),
        CustomDropdown<String>(
          borderColor: borderColor,
          fillColor: fillColor,
          labelStyle: styleLabel,
          required: false,
          // error: controller.requestTypeErr.value,
          // selectedItem: controller.requestType.value,
          label: 'Tahun Priode',
          items: ['2021', '2022', '2023'],
          customContent: (p0) => p0 == null ? 'Pilih RW' : '$p0 ',
          onChanged: (value) {
            // controller.requestType.value = value;
            // controller.requestTypeErr.value = null;
            // controller.emptyCheck();
            // controller.emptyAttendanceDate();
          },
        ),
      ],
    );
  }
}
