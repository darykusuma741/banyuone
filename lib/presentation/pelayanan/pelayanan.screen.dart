import 'package:banyuone/common/components/button.component.dart';
import 'package:banyuone/common/components/custom_dropdown.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/pelayanan.controller.dart';

class PelayananScreen extends GetView<PelayananController> {
  const PelayananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleLabel = BaseText.darkBlueGray.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500);
    final borderColor = ColorsName.paleBlue;
    final fillColor = ColorsName.lightGray;
    final hintStyle = BaseText.slateGray.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w400);

    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'pelayanan',
      ),
      backgroundColor: ColorsName.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          spacing: 15.h,
          children: [
            CustomDropdown<String>(
              borderColor: borderColor,
              fillColor: fillColor,
              labelStyle: styleLabel,
              styleTextHint: hintStyle,
              // error: controller.requestTypeErr.value,
              // selectedItem: controller.requestType.value,
              label: 'Jenis Pelayanan',
              items: ['Barang1', 'Barang2'],
              customContent: (p0) => p0 == null ? 'Pilih yang sesuai' : '$p0 ',
              onChanged: (value) {
                // controller.requestType.value = value;
                // controller.requestTypeErr.value = null;
                // controller.emptyCheck();
                // controller.emptyAttendanceDate();
              },
            ),
            TextFieldComponent(
              label: 'NIK',
              styleLabel: styleLabel,
              borderColor: ColorsName.paleBlue,
              fillColor: ColorsName.lightGray,
              hintStyle: hintStyle,
              hintText: 'Isikan Sesuai KTP',
            ),
            TextFieldComponent(
              label: 'Nama',
              styleLabel: styleLabel,
              borderColor: ColorsName.paleBlue,
              fillColor: ColorsName.lightGray,
              hintStyle: hintStyle,
              hintText: 'Nama Lengkap',
            ),
            TextFieldComponent(
              label: 'Alamat',
              styleLabel: styleLabel,
              borderColor: ColorsName.paleBlue,
              fillColor: ColorsName.lightGray,
              hintStyle: hintStyle,
              hintText: 'Alamat Lengkap (RT/RW/Dusun/Kec)',
            ),
            TextFieldComponent(
              label: 'Keperluan / Alasan',
              textArea: true,
              styleLabel: styleLabel,
              borderColor: ColorsName.paleBlue,
              fillColor: ColorsName.lightGray,
              hintStyle: hintStyle,
              hintText: 'Isi Keperluan',
            ),
            TextFieldComponent(
              label: 'Nomor HP',
              styleLabel: styleLabel,
              borderColor: ColorsName.paleBlue,
              fillColor: ColorsName.lightGray,
              hintStyle: hintStyle,
              hintText: 'Contoh : 081234567890',
            ),
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
