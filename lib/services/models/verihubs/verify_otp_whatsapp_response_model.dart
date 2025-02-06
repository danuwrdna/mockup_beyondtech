import 'dart:convert';

VerifyOtpWhatsappResponseModel verifyOtpWhatsappResponseModelFromJson(String str) => VerifyOtpWhatsappResponseModel.fromJson(json.decode(str));

String verifyOtpWhatsappResponseModelToJson(VerifyOtpWhatsappResponseModel data) => json.encode(data.toJson());

class VerifyOtpWhatsappResponseModel {
  VerifyOtpWhatsappResponseData? data;
  String? message;
  String? statusCode;

  VerifyOtpWhatsappResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory VerifyOtpWhatsappResponseModel.fromJson(Map<String, dynamic> json) => VerifyOtpWhatsappResponseModel(
    data: json["data"] == null ? null : VerifyOtpWhatsappResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class VerifyOtpWhatsappResponseData {
  String? data;
  String? message;
  String? statusCode;

  VerifyOtpWhatsappResponseData({
    this.data,
    this.message,
    this.statusCode,
  });

  factory VerifyOtpWhatsappResponseData.fromJson(Map<String, dynamic> json) => VerifyOtpWhatsappResponseData(
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
