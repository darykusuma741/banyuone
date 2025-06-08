import 'package:banyuone/common/components/custom_dropdown.dart';
import 'package:banyuone/common/components/text_field.component.dart';
import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/bansos_request/controllers/bansos_request.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BansosRequestForm extends GetView<BansosRequestController> {
  const BansosRequestForm({super.key});

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
          TextFieldComponent(
            label: 'Nomor Kartu Keluarga',
            styleLabel: styleLabel,
            controller: controller.nomorKk.value,
            error: controller.nomorKkErr.value,
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            hintText: 'Isikan Nomor KK',
            onChanged: (v) {
              controller.nomorKkErr.value = null;
            },
          ),
          TextFieldComponent(
            label: 'Nama Sesuai KTP',
            styleLabel: styleLabel,
            controller: controller.nama.value,
            error: controller.namaErr.value,
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            hintText: 'Masukkan Nama Lengkap',
            onChanged: (v) {
              controller.namaErr.value = null;
            },
          ),
          TextFieldComponent(
            label: 'NIK',
            styleLabel: styleLabel,
            controller: controller.nik.value,
            error: controller.nikErr.value,
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            hintText: 'Isikan Sesuai KTP',
            onChanged: (v) {
              controller.nikErr.value = null;
            },
          ),
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: true,
            styleTextHint: hintStyle,
            error: controller.rtErr.value,
            selectedItem: controller.rt.value,
            label: 'RT',
            items: ['1', '2', '3', '4', '5'],
            customContent: (p0) => p0 == null ? 'Pilih RT' : '$p0 ',
            onChanged: (value) {
              controller.rt.value = value;
              controller.rtErr.value = null;
            },
          ),
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: true,
            styleTextHint: hintStyle,
            error: controller.rwErr.value,
            selectedItem: controller.rw.value,
            label: 'RW',
            items: ['1', '2', '3', '4', '5'],
            customContent: (p0) => p0 == null ? 'Pilih RW' : '$p0 ',
            onChanged: (value) {
              controller.rw.value = value;
              controller.rwErr.value = null;
            },
          ),
          TextFieldComponent(
            label: 'Tanggal Lahir',
            styleLabel: styleLabel,
            borderColor: ColorsName.paleBlue,
            fillColor: ColorsName.lightGray,
            hintStyle: hintStyle,
            controller: controller.tglLahir.value,
            error: controller.tglLahirErr.value,
            hintText: 'dd/MM/YY',
            onChanged: (v) {
              controller.tglLahirErr.value = null;
            },
          ),
          CustomDropdown<String>(
            borderColor: borderColor,
            fillColor: fillColor,
            labelStyle: styleLabel,
            required: true,
            styleTextHint: hintStyle,
            error: controller.tahunPeriodeErr.value,
            selectedItem: controller.tahunPeriode.value,
            label: 'Tahun Periode',
            items: ['2021', '2022', '2023', '2024', '2025'],
            customContent: (p0) => p0 == null ? 'Pilih tahun periode' : '$p0 ',
            onChanged: (value) {
              controller.tahunPeriode.value = value;
              controller.tahunPeriodeErr.value = null;
            },
          ),
        ],
      );
    });
  }
}
