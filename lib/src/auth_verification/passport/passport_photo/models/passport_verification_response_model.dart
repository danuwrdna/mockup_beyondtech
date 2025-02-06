import 'dart:convert';

PassportVerificationResponseModel passportVerificationResponseModelFromJson(String str) => PassportVerificationResponseModel.fromJson(json.decode(str));

String passportVerificationResponseModelToJson(PassportVerificationResponseModel data) => json.encode(data.toJson());

class PassportVerificationResponseModel {
  PassportVerificationResponseData? data;

  PassportVerificationResponseModel({
    this.data,
  });

  factory PassportVerificationResponseModel.fromJson(Map<String, dynamic> json) => PassportVerificationResponseModel(
    data: json["data"] == null ? null : PassportVerificationResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class PassportVerificationResponseData {
  PassportVerificationResponseStatus? respStatus;

  PassportVerificationResponseData({
    this.respStatus,
  });

  factory PassportVerificationResponseData.fromJson(Map<String, dynamic> json) => PassportVerificationResponseData(
    respStatus: json["respStatus"] == null ? null : PassportVerificationResponseStatus.fromJson(json["respStatus"]),
  );

  Map<String, dynamic> toJson() => {
    "respStatus": respStatus?.toJson(),
  };
}

class PassportVerificationResponseStatus {
  String? statusCode;
  String? message;

  PassportVerificationResponseStatus({
    this.statusCode,
    this.message,
  });

  factory PassportVerificationResponseStatus.fromJson(Map<String, dynamic> json) => PassportVerificationResponseStatus(
    statusCode: json["StatusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
  };
}
