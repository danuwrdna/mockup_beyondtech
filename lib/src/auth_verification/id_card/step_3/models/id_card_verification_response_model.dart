import 'dart:convert';

IdCardVerificationResponseModel idCardVerificationResponseModelFromJson(String str) => IdCardVerificationResponseModel.fromJson(json.decode(str));

String idCardVerificationResponseModelToJson(IdCardVerificationResponseModel data) => json.encode(data.toJson());

class IdCardVerificationResponseModel {
  IdCardVerificationResponseData? data;

  IdCardVerificationResponseModel({
    this.data,
  });

  factory IdCardVerificationResponseModel.fromJson(Map<String, dynamic> json) => IdCardVerificationResponseModel(
    data: json["data"] == null ? null : IdCardVerificationResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class IdCardVerificationResponseData {
  IdCardVerificationResponseStatus? respStatus;

  IdCardVerificationResponseData({
    this.respStatus,
  });

  factory IdCardVerificationResponseData.fromJson(Map<String, dynamic> json) => IdCardVerificationResponseData(
    respStatus: json["respStatus"] == null ? null : IdCardVerificationResponseStatus.fromJson(json["respStatus"]),
  );

  Map<String, dynamic> toJson() => {
    "respStatus": respStatus?.toJson(),
  };
}

class IdCardVerificationResponseStatus {
  String? statusCode;
  String? message;

  IdCardVerificationResponseStatus({
    this.statusCode,
    this.message,
  });

  factory IdCardVerificationResponseStatus.fromJson(Map<String, dynamic> json) => IdCardVerificationResponseStatus(
    statusCode: json["StatusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
  };
}