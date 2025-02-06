import 'dart:convert';

GetProfileResponseModel getProfileResponseModelFromJson(String str) =>
    GetProfileResponseModel.fromJson(json.decode(str));

String getProfileResponseModelToJson(GetProfileResponseModel data) =>
    json.encode(data.toJson());

class GetProfileResponseModel {
  GetProfileResponseModelData? getProfileData;
  String? message;
  String? statusCode;

  GetProfileResponseModel({
    this.getProfileData,
    this.message,
    this.statusCode,
  });

  factory GetProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      GetProfileResponseModel(
        getProfileData: json["data"] == null
            ? null
            : GetProfileResponseModelData.fromJson(json["data"]),
        message: json["message"],
        statusCode: json["statusCode"],
      );

  Map<String, dynamic> toJson() => {
        "data": getProfileData?.toJson(),
        "message": message,
        "statusCode": statusCode,
      };
}

class GetProfileResponseModelData {
  String? statusCode;
  String? message;
  DataData? data;

  GetProfileResponseModelData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory GetProfileResponseModelData.fromJson(Map<String, dynamic> json) =>
      GetProfileResponseModelData(
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : DataData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "data": data?.toJson(),
      };
}

class DataData {
  String? name;
  String? username;
  String? email;
  String? phoneNumber;
  String? imageUrl;

  DataData({
    this.name,
    this.username,
    this.email,
    this.phoneNumber,
    this.imageUrl,
  });

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "email": email,
        "phoneNumber": phoneNumber,
        "imageUrl": imageUrl,
      };
}
