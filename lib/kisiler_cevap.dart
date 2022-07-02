import 'package:json_parse_kullanimi/Kisiler.dart';

class KisilerCevap {
  List<Kisiler> kisiler;
  int success;

  KisilerCevap({required this.kisiler, required this.success});

  factory KisilerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["kisiler"] as List;
    List<Kisiler> kisilerListesi =
        jsonArray.map((nesne) => Kisiler.fromJson(nesne)).toList();
    return KisilerCevap(
        kisiler: kisilerListesi, success: json["success"] as int);
  }
}
