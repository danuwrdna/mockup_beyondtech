import 'dart:convert';

SaveRecipientResponseModel saveRecipientResponseModelFromJson(String str) => SaveRecipientResponseModel.fromJson(json.decode(str));

String saveRecipientResponseModelToJson(SaveRecipientResponseModel data) => json.encode(data.toJson());

class SaveRecipientResponseModel {
  SaveRecipientResponseData? data;
  String? message;
  String? statusCode;

  SaveRecipientResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory SaveRecipientResponseModel.fromJson(Map<String, dynamic> json) => SaveRecipientResponseModel(
    data: json["data"] == null ? null : SaveRecipientResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["statusCode"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "statusCode": statusCode,
  };
}

class SaveRecipientResponseData {
  String? statusCode;
  String? message;

  SaveRecipientResponseData({
    this.statusCode,
    this.message,
  });

  factory SaveRecipientResponseData.fromJson(Map<String, dynamic> json) => SaveRecipientResponseData(
    statusCode: json["statusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
  };
}
