import 'dart:convert';

SendOtpSmsResponseModel sendOtpSmsResponseModelFromJson(String str) => SendOtpSmsResponseModel.fromJson(json.decode(str));

String sendOtpSmsResponseModelToJson(SendOtpSmsResponseModel data) => json.encode(data.toJson());

class SendOtpSmsResponseModel {
  SendOtpSmsResponseData? data;
  String? message;
  String? statusCode;

  SendOtpSmsResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory SendOtpSmsResponseModel.fromJson(Map<String, dynamic> json) => SendOtpSmsResponseModel(
    data: json["data"] == null ? null : SendOtpSmsResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class SendOtpSmsResponseData {
  String? data;
  String? message;
  String? statusCode;

  SendOtpSmsResponseData({
    this.data,
    this.message,
    this.statusCode,
  });

  factory SendOtpSmsResponseData.fromJson(Map<String, dynamic> json) => SendOtpSmsResponseData(
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
