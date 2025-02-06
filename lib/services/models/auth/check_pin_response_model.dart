import 'dart:convert';

CheckPinResponseModel checkPinResponseModelFromJson(String str) => CheckPinResponseModel.fromJson(json.decode(str));

String checkPinResponseModelToJson(CheckPinResponseModel data) => json.encode(data.toJson());

class CheckPinResponseModel {
  CheckPinResponseData? data;
  String? message;
  String? statusCode;

  CheckPinResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory CheckPinResponseModel.fromJson(Map<String, dynamic> json) => CheckPinResponseModel(
    data: json["data"] == null ? null : CheckPinResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["statusCode"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "statusCode": statusCode,
  };
}

class CheckPinResponseData {
  CheckPinResponseStatus? respStatus;

  CheckPinResponseData({
    this.respStatus,
  });

  factory CheckPinResponseData.fromJson(Map<String, dynamic> json) => CheckPinResponseData(
    respStatus: json["respStatus"] == null ? null : CheckPinResponseStatus.fromJson(json["respStatus"]),
  );

  Map<String, dynamic> toJson() => {
    "respStatus": respStatus?.toJson(),
  };
}

class CheckPinResponseStatus {
  String? statusCode;
  String? message;

  CheckPinResponseStatus({
    this.statusCode,
    this.message,
  });

  factory CheckPinResponseStatus.fromJson(Map<String, dynamic> json) => CheckPinResponseStatus(
    statusCode: json["StatusCode"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "StatusCode": statusCode,
    "message": message,
  };
}
