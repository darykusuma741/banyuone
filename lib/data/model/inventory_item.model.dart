import 'package:banyuone/common/abstract/base_model.dart';

class InventoryItemModel extends BaseModel<InventoryItemModel> {
  final String id;
  final String namaBarang;
  final String? photo;
  final int stok;
  final int stokAwal;

  InventoryItemModel({
    required this.id,
    required this.photo,
    required this.namaBarang,
    required this.stok,
    required this.stokAwal,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'namaBarang': namaBarang,
      'stok': stok,
      'stokAwal': stokAwal,
    };
  }

  factory InventoryItemModel.fromJson(Map<String, dynamic> json, String id) {
    return InventoryItemModel(
      id: id,
      photo: json['photo'],
      namaBarang: json['namaBarang'],
      stok: json['stok'],
      stokAwal: json['stokAwal'] ?? 0,
    );
  }

  @override
  InventoryItemModel copyWith({
    String? id,
    String? namaBarang,
    String? photo,
    int? stok,
    int? stokAwal,
  }) {
    return InventoryItemModel(
      id: id ?? this.id,
      namaBarang: namaBarang ?? this.namaBarang,
      photo: photo ?? this.photo,
      stok: stok ?? this.stok,
      stokAwal: stokAwal ?? this.stokAwal,
    );
  }
}
