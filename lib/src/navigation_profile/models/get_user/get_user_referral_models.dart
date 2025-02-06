import 'dart:convert';

GetUserReferralResponseModel getProfileResponseModelFromJson(String str) =>
    GetUserReferralResponseModel.fromJson(json.decode(str));

String getProfileResponseModelToJson(GetUserReferralResponseModel data) =>
    json.encode(data.toJson());

class GetUserReferralResponseModel {
  GetProfileResponseModelData? data;

  GetUserReferralResponseModel({
    this.data,
  });

  factory GetUserReferralResponseModel.fromJson(Map<String, dynamic> json) =>
      GetUserReferralResponseModel(
        data: json["data"] == null
            ? null
            : GetProfileResponseModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class GetProfileResponseModelData {
  String? statusCode;
  String? message;
  ReferralData? data;

  GetProfileResponseModelData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory GetProfileResponseModelData.fromJson(Map<String, dynamic> json) =>
      GetProfileResponseModelData(
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : ReferralData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "data": data?.toJson(),
      };
}

class ReferralData {
  String? referral;
  String? fullname;

  ReferralData({
    this.referral,
    this.fullname,
  });

  factory ReferralData.fromJson(Map<String, dynamic> json) => ReferralData(
        referral: json["referral"],
        fullname: json["Fullname"],
      );

  Map<String, dynamic> toJson() => {
        "referral": referral,
        "Fullname": fullname,
      };
}
