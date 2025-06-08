import 'package:banyuone/controllers/bansos.main.controller.dart';
import 'package:banyuone/data/model/bansos.model.dart';
import 'package:banyuone/presentation/bansos/controllers/bansos.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BansosRequestController extends GetxController {
  BansosMainController bansosMainCtr = Get.put(BansosMainController());
  BansosController bansosCtr = Get.put(BansosController());
  Rx<TextEditingController> nomorKk = Rx(TextEditingController());
  Rxn<String?> nomorKkErr = Rxn();
  Rx<TextEditingController> nama = Rx(TextEditingController());
  Rxn<String?> namaErr = Rxn();
  Rx<TextEditingController> tglLahir = Rx(TextEditingController());
  Rxn<String?> tglLahirErr = Rxn();
  Rx<TextEditingController> nik = Rx(TextEditingController());
  Rxn<String?> nikErr = Rxn();
  Rxn<String?> rt = Rxn();
  Rxn<String?> rtErr = Rxn();
  Rxn<String?> rw = Rxn();
  Rxn<String?> rwErr = Rxn();
  Rxn<String?> tahunPeriode = Rxn();
  Rxn<String?> tahunPeriodeErr = Rxn();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onHandleSave() {
    if (!validation()) return;
    bansosMainCtr.saveData(BansosModel(
      nomorKk: nomorKk.value.text,
      nama: nama.value.text,
      nik: nik.value.text,
      rt: rt.value!,
      rw: rw.value!,
      tanggalLahir: tglLahir.value.text,
      tahunPeriode: tahunPeriode.value!,
    ));
    bansosCtr.getData();
    Get.back();
  }

  bool validation() {
    bool next = true;
    if (nomorKk.value.text.isEmpty) {
      next = false;
      nomorKkErr.value = "Harap masukkan nomor Kk";
    }
    if (nama.value.text.isEmpty) {
      next = false;
      namaErr.value = "Harap masukkan nama";
    }
    if (nik.value.text.isEmpty) {
      next = false;
      nikErr.value = "Harap masukkan NIK";
    }

    if (rt.value == null) {
      next = false;
      rtErr.value = "Harap masukkan RT";
    }
    if (rw.value == null) {
      next = false;
      rwErr.value = "Harap masukkan RW";
    }
    if (tglLahir.value.text.isEmpty) {
      next = false;
      tglLahirErr.value = "Harap masukkan tanggal lahir";
    }
    if (tahunPeriode.value == null) {
      next = false;
      tahunPeriodeErr.value = "Harap masukkan tanggal lahir";
    }

    return next;
  }
}
