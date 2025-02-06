import 'dart:convert';

SendOtpWhatsappResponseModel sendOtpWhatsappResponseModelFromJson(String str) => SendOtpWhatsappResponseModel.fromJson(json.decode(str));

String sendOtpWhatsappResponseModelToJson(SendOtpWhatsappResponseModel data) => json.encode(data.toJson());

class SendOtpWhatsappResponseModel {
  SendOtpWhatsappResponseData? data;
  String? message;
  String? statusCode;

  SendOtpWhatsappResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory SendOtpWhatsappResponseModel.fromJson(Map<String, dynamic> json) => SendOtpWhatsappResponseModel(
    data: json["data"] == null ? null : SendOtpWhatsappResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class SendOtpWhatsappResponseData {
  String? data;
  String? message;
  String? statusCode;

  SendOtpWhatsappResponseData({
    this.data,
    this.message,
    this.statusCode,
  });

  factory SendOtpWhatsappResponseData.fromJson(Map<String, dynamic> json) => SendOtpWhatsappResponseData(
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
