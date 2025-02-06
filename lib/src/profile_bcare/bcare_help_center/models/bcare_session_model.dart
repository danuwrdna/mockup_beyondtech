import 'dart:convert';

BcareSessionResponseModel bcareSessionResponseModelFromJson(String str) =>
    BcareSessionResponseModel.fromJson(json.decode(str));

String bcareSessionResponseModelToJson(BcareSessionResponseModel data) =>
    json.encode(data.toJson());

class BcareSessionResponseModel {
  BcareSessionData? data;

  BcareSessionResponseModel({
    this.data,
  });

  factory BcareSessionResponseModel.fromJson(Map<String, dynamic> json) =>
      BcareSessionResponseModel(
        data: json["data"] == null
            ? null
            : BcareSessionData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class BcareSessionData {
  String? statusCode;
  String? message;

  BcareSessionData({
    this.statusCode,
    this.message,
  });

  factory BcareSessionData.fromJson(Map<String, dynamic> json) =>
      BcareSessionData(
        statusCode: json["statusCode"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
      };
}
