import 'dart:convert';

ProvinceListResponseModel provinceListResponseModelFromJson(String str) => ProvinceListResponseModel.fromJson(json.decode(str));

String provinceListResponseModelToJson(ProvinceListResponseModel data) => json.encode(data.toJson());

class ProvinceListResponseModel {
  ProvinceListResponseData? data;

  ProvinceListResponseModel({
    this.data,
  });

  factory ProvinceListResponseModel.fromJson(Map<String, dynamic> json) => ProvinceListResponseModel(
    data: json["data"] == null ? null : ProvinceListResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class ProvinceListResponseData {
  String? statusCode;
  String? message;
  List<ProvinceData>? data;

  ProvinceListResponseData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory ProvinceListResponseData.fromJson(Map<String, dynamic> json) => ProvinceListResponseData(
    statusCode: json["StatusCode"],
    message: json["message"],
    data: json["data"] == null ? [] : List<ProvinceData>.from(json["data"]!.map((x) => ProvinceData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class ProvinceData {
  String? id;
  String? name;

  ProvinceData({
    this.id,
    this.name,
  });

  factory ProvinceData.fromJson(Map<String, dynamic> json) => ProvinceData(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
