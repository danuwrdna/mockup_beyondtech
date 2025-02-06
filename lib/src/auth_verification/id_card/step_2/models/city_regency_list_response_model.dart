import 'dart:convert';

CityRegencyListResponseModel cityRegencyListResponseModelFromJson(String str) => CityRegencyListResponseModel.fromJson(json.decode(str));

String cityRegencyListResponseModelToJson(CityRegencyListResponseModel data) => json.encode(data.toJson());

class CityRegencyListResponseModel {
  CityRegencyListResponseData? data;

  CityRegencyListResponseModel({
    this.data,
  });

  factory CityRegencyListResponseModel.fromJson(Map<String, dynamic> json) => CityRegencyListResponseModel(
    data: json["data"] == null ? null : CityRegencyListResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class CityRegencyListResponseData {
  String? statusCode;
  String? message;
  List<CityRegencyData>? data;

  CityRegencyListResponseData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory CityRegencyListResponseData.fromJson(Map<String, dynamic> json) => CityRegencyListResponseData(
    statusCode: json["StatusCode"],
    message: json["message"],
    data: json["data"] == null ? [] : List<CityRegencyData>.from(json["data"]!.map((x) => CityRegencyData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class CityRegencyData {
  String? id;
  String? name;

  CityRegencyData({
    this.id,
    this.name,
  });

  factory CityRegencyData.fromJson(Map<String, dynamic> json) => CityRegencyData(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
