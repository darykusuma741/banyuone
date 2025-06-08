import 'package:banyuone/controllers/bansos.main.controller.dart';
import 'package:banyuone/data/model/bansos.model.dart';
import 'package:get/get.dart';

class BansosController extends GetxController {
  BansosMainController bansosMainCtr = Get.put(BansosMainController());
  Rx<List<BansosModel>> data = Rx([]);
  Rxn<String?> rt = Rxn();
  Rxn<String?> rw = Rxn();
  Rxn<String?> tahunPeriode = Rxn();

  @override
  void onInit() {
    getData();
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

  void getData() async {
    await bansosMainCtr.getData();
    data.value = bansosMainCtr.listItem.value;
  }

  void filter() {
    data.value = bansosMainCtr.listItem.value.where((e) {
      if (tahunPeriode.value == null) {
        return true;
      } else if (tahunPeriode.value == e.tahunPeriode) {
        return true;
      } else {
        return false;
      }
    }).toList();
    data.value = data.value.where((e) {
      if (rt.value == null) {
        return true;
      } else if (rt.value == e.rt) {
        return true;
      } else {
        return false;
      }
    }).toList();
    data.value = data.value.where((e) {
      if (rw.value == null) {
        return true;
      } else if (rw.value == e.rw) {
        return true;
      } else {
        return false;
      }
    }).toList();
  }

  void onHandleSearch() {
    filter();
  }
}
