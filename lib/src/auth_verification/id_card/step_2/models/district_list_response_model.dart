import 'dart:convert';

DistrictListResponseModel districtListResponseModelFromJson(String str) => DistrictListResponseModel.fromJson(json.decode(str));

String districtListResponseModelToJson(DistrictListResponseModel data) => json.encode(data.toJson());

class DistrictListResponseModel {
  DistrictListResponseData? data;

  DistrictListResponseModel({
    this.data,
  });

  factory DistrictListResponseModel.fromJson(Map<String, dynamic> json) => DistrictListResponseModel(
    data: json["data"] == null ? null : DistrictListResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class DistrictListResponseData {
  String? statusCode;
  String? message;
  List<DistrictData>? data;

  DistrictListResponseData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory DistrictListResponseData.fromJson(Map<String, dynamic> json) => DistrictListResponseData(
    statusCode: json["StatusCode"],
    message: json["message"],
    data: json["data"] == null ? [] : List<DistrictData>.from(json["data"]!.map((x) => DistrictData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class DistrictData {
  String? id;
  String? name;

  DistrictData({
    this.id,
    this.name,
  });

  factory DistrictData.fromJson(Map<String, dynamic> json) => DistrictData(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
