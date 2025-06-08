import 'package:banyuone/common/abstract/base_model.dart';

class BansosModel extends BaseModel<BansosModel> {
  final String id;
  final String nomorKk;
  final String nama;
  final String nik;
  final String rt;
  final String rw;
  final String tanggalLahir;
  final String tahunPeriode;

  BansosModel({
    this.id = 'Test',
    required this.nomorKk,
    required this.nama,
    required this.nik,
    required this.rt,
    required this.rw,
    required this.tanggalLahir,
    required this.tahunPeriode,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nomorKk': nomorKk,
      'namaPenerima': nama,
      'nikPenerima': nik,
      'rt': rt,
      'rw': rw,
      'tanggalLahir': tanggalLahir,
      'tahunPeriode': tahunPeriode,
    };
  }

  factory BansosModel.fromJson(Map<String, dynamic> json, String id) {
    return BansosModel(
      id: id,
      nomorKk: json['nomorKk'],
      nama: json['namaPenerima'] ?? '-',
      nik: json['nikPenerima'] ?? json['nik'] ?? '-',
      rt: json['rt'],
      rw: json['rw'],
      tanggalLahir: json['tanggalLahir'],
      tahunPeriode: json['tahunPeriode'],
    );
  }

  @override
  BansosModel copyWith({
    String? id,
    String? nomorKk,
    String? nama,
    String? nik,
    String? rt,
    String? rw,
    String? tanggalLahir,
    String? tahunPeriode,
  }) {
    return BansosModel(
      id: id ?? this.id,
      nomorKk: nomorKk ?? this.nomorKk,
      nama: nama ?? this.nama,
      nik: nik ?? this.nik,
      rt: rt ?? this.rt,
      rw: rw ?? this.rw,
      tanggalLahir: tanggalLahir ?? this.tanggalLahir,
      tahunPeriode: tahunPeriode ?? this.tahunPeriode,
    );
  }
}
