import 'dart:convert';

UpdateRecipientResponseModel updateRecipientResponseModelFromJson(String str) => UpdateRecipientResponseModel.fromJson(json.decode(str));

String updateRecipientResponseModelToJson(UpdateRecipientResponseModel data) => json.encode(data.toJson());

class UpdateRecipientResponseModel {
  UpdateRecipientResponseData? data;

  UpdateRecipientResponseModel({
    this.data,
  });

  factory UpdateRecipientResponseModel.fromJson(Map<String, dynamic> json) => UpdateRecipientResponseModel(
    data: json["data"] == null ? null : UpdateRecipientResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class UpdateRecipientResponseData {
  String? statusCode;
  String? message;

  UpdateRecipientResponseData({
    this.statusCode,
    this.message,
  });

  factory UpdateRecipientResponseData.fromJson(Map<String, dynamic> json) => UpdateRecipientResponseData(
    statusCode: json["statusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
  };
}