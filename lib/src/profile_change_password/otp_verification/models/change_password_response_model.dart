// To parse this JSON data, do
//
//     final changePasswordResponseModel = changePasswordResponseModelFromJson(jsonString);

import 'dart:convert';

ChangePasswordResponseModel changePasswordResponseModelFromJson(String str) => ChangePasswordResponseModel.fromJson(json.decode(str));

String changePasswordResponseModelToJson(ChangePasswordResponseModel data) => json.encode(data.toJson());

class ChangePasswordResponseModel {
    ChangePasswordResponseData? data;

    ChangePasswordResponseModel({
        this.data,
    });

    factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) => ChangePasswordResponseModel(
        data: json["data"] == null ? null : ChangePasswordResponseData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class ChangePasswordResponseData {
    ChangePasswordRespStatus? respStatus;

    ChangePasswordResponseData({
        this.respStatus,
    });

    factory ChangePasswordResponseData.fromJson(Map<String, dynamic> json) => ChangePasswordResponseData(
        respStatus: json["respStatus"] == null ? null : ChangePasswordRespStatus.fromJson(json["respStatus"]),
    );

    Map<String, dynamic> toJson() => {
        "respStatus": respStatus?.toJson(),
    };
}

class ChangePasswordRespStatus {
    String? statusCode;
    String? message;

    ChangePasswordRespStatus({
        this.statusCode,
        this.message,
    });

    factory ChangePasswordRespStatus.fromJson(Map<String, dynamic> json) => ChangePasswordRespStatus(
        statusCode: json["StatusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "StatusCode": statusCode,
        "message": message,
    };
}
