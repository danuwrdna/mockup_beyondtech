import 'dart:convert';

FindReferralResponseModel findReferralResponseModelFromJson(String str) => FindReferralResponseModel.fromJson(json.decode(str));

String findReferralResponseModelToJson(FindReferralResponseModel data) => json.encode(data.toJson());

class FindReferralResponseModel {
  FindReferralResponseModelData? data;

  FindReferralResponseModel({
    this.data,
  });

  factory FindReferralResponseModel.fromJson(Map<String, dynamic> json) => FindReferralResponseModel(
    data: FindReferralResponseModelData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class FindReferralResponseModelData {
  RespStatus? respStatus;

  FindReferralResponseModelData({
    this.respStatus,
  });

  factory FindReferralResponseModelData.fromJson(Map<String, dynamic> json) => FindReferralResponseModelData(
    respStatus: RespStatus.fromJson(json["respStatus"]),
  );

  Map<String, dynamic> toJson() => {
    "respStatus": respStatus?.toJson(),
  };
}

class RespStatus {
  String? statusCode;
  String? message;
  RespStatusData? data;

  RespStatus({
    this.statusCode,
    this.message,
    this.data,
  });

  factory RespStatus.fromJson(Map<String, dynamic> json) => RespStatus(
    statusCode: json["StatusCode"],
    message: json["message"],
    data: RespStatusData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
    "data": data?.toJson(),
  };
}

class RespStatusData {
  String? fullName;
  String? referralCode;
  String? referralCodeName;

  RespStatusData({
    this.fullName,
    this.referralCode,
    this.referralCodeName,
  });

  factory RespStatusData.fromJson(Map<String, dynamic> json) => RespStatusData(
    fullName: json["fullname"],
    referralCode: json["referral_code"],
    referralCodeName: json["referral_code_name"],
  );

  Map<String, dynamic> toJson() => {
    "fullname": fullName,
    "referral_code": referralCode,
    "referral_code_name": referralCodeName,
  };
}