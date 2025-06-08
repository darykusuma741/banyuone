import 'package:banyuone/data/model/bansos.model.dart';
import 'package:banyuone/data/service/bansos.service.dart';
import 'package:get/get.dart';

class BansosMainController extends GetxController {
  BansosService bansosService = BansosService();
  Rx<List<BansosModel>> listItem = Rx([]);

  Future getData() async {
    try {
      listItem.value = await bansosService.getData();
    } catch (e) {
      print(e);
    }
  }

  Future updateData(BansosModel data) async {
    try {
      listItem.value = listItem.value.map((e) {
        return (data.id == e.id) ? data : e;
      }).toList();
      await bansosService.updateData(data);
    } catch (e) {
      print(e); // test
    }
  }

  Future saveData(BansosModel data) async {
    try {
      listItem.value = [data, ...listItem.value];
      await bansosService.saveData(data);
    } catch (e) {
      print(e);
    }
  }
}
