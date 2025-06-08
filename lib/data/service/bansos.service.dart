import 'package:banyuone/data/model/bansos.model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BansosService {
  Future<List<BansosModel>> getData() async {
    List<BansosModel> data = [];

    final result = await FirebaseFirestore.instance.collection('usulanBansos').get();
    data = result.docs.map((e) {
      return BansosModel.fromJson(e.data(), e.id);
    }).toList();
    return data;
  }

  Future updateData(BansosModel data) async {
    await FirebaseFirestore.instance.collection('usulanBansos').doc(data.id).update(data.toJson());
  }
}
