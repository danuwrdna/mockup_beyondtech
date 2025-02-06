import 'dart:convert';

CheckEmailUsernameResponseModel checkEmailUsernameResponseModelFromJson(String str) => CheckEmailUsernameResponseModel.fromJson(json.decode(str));

String checkEmailUsernameResponseModelToJson(CheckEmailUsernameResponseModel data) => json.encode(data.toJson());

class CheckEmailUsernameResponseModel {
  Data? data;

  CheckEmailUsernameResponseModel({
    this.data,
  });

  factory CheckEmailUsernameResponseModel.fromJson(Map<String, dynamic> json) => CheckEmailUsernameResponseModel(
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