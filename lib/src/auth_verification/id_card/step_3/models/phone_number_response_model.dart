import 'dart:convert';

PhoneNumberResponseModel phoneNumberResponseModelFromJson(String str) => PhoneNumberResponseModel.fromJson(json.decode(str));

String phoneNumberResponseModelToJson(PhoneNumberResponseModel data) => json.encode(data.toJson());

class PhoneNumberResponseModel {
  PhoneNumberResponseData? data;

  PhoneNumberResponseModel({
    this.data,
  });

  factory PhoneNumberResponseModel.fromJson(Map<String, dynamic> json) => PhoneNumberResponseModel(
    data: json["data"] == null ? null : PhoneNumberResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class PhoneNumberResponseData {
  String? statusCode;
  String? message;
  PhoneNumberData? data;

  PhoneNumberResponseData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory PhoneNumberResponseData.fromJson(Map<String, dynamic> json) => PhoneNumberResponseData(
    statusCode: json["statusCode"],
    message: json["message"],
    data: json["data"] == null ? null : PhoneNumberData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": data?.toJson(),
  };
}

class PhoneNumberData {
  String? phoneNumber;

  PhoneNumberData({
    this.phoneNumber,
  });

  factory PhoneNumberData.fromJson(Map<String, dynamic> json) => PhoneNumberData(
    phoneNumber: json["phoneNumber"],
  );

  Map<String, dynamic> toJson() => {
    "phoneNumber": phoneNumber,
  };
}