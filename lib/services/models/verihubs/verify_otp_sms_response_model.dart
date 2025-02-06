import 'dart:convert';

VerifyOtpSmsResponseModel verifyOtpSmsResponseModelFromJson(String str) => VerifyOtpSmsResponseModel.fromJson(json.decode(str));

String verifyOtpSmsResponseModelToJson(VerifyOtpSmsResponseModel data) => json.encode(data.toJson());

class VerifyOtpSmsResponseModel {
  VerifyOtpSmsResponseData? data;
  String? message;
  String? statusCode;

  VerifyOtpSmsResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory VerifyOtpSmsResponseModel.fromJson(Map<String, dynamic> json) => VerifyOtpSmsResponseModel(
    data: json["data"] == null ? null : VerifyOtpSmsResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class VerifyOtpSmsResponseData {
  String? data;
  String? message;
  String? statusCode;

  VerifyOtpSmsResponseData({
    this.data,
    this.message,
    this.statusCode,
  });

  factory VerifyOtpSmsResponseData.fromJson(Map<String, dynamic> json) => VerifyOtpSmsResponseData(
    data: json["data"],
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data,
    "message": message,
    "status_code": statusCode,
  };
}
