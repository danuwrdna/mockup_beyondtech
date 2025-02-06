import 'dart:convert';

SignCheckResponseModel signCheckResponseModelFromJson(String str) => SignCheckResponseModel.fromJson(json.decode(str));

String signCheckResponseModelToJson(SignCheckResponseModel data) => json.encode(data.toJson());

class SignCheckResponseModel {
  Data? data;

  SignCheckResponseModel({
    this.data,
  });

  factory SignCheckResponseModel.fromJson(Map<String, dynamic> json) => SignCheckResponseModel(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class Data {
  RespStatus? respStatus;

  Data({
    this.respStatus,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    respStatus: RespStatus.fromJson(json["respStatus"]),
  );

  Map<String, dynamic> toJson() => {
    "respStatus": respStatus?.toJson(),
  };
}

class RespStatus {
  String? statusCode;
  String? message;

  RespStatus({
    this.statusCode,
    this.message,
  });

  factory RespStatus.fromJson(Map<String, dynamic> json) => RespStatus(
    statusCode: json["StatusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
  };
}
