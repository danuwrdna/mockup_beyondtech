import 'dart:convert';

CheckPasswordResponseModel checkPasswordResponseModelFromJson(String str) => CheckPasswordResponseModel.fromJson(json.decode(str));

String checkPasswordResponseModelToJson(CheckPasswordResponseModel data) => json.encode(data.toJson());

class CheckPasswordResponseModel {
    CheckPasswordResponseData? data;

    CheckPasswordResponseModel({
        this.data,
    });

    factory CheckPasswordResponseModel.fromJson(Map<String, dynamic> json) => CheckPasswordResponseModel(
        data: json["data"] == null ? null : CheckPasswordResponseData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class CheckPasswordResponseData {
    CheckPasswordRespStatus? respStatus;

    CheckPasswordResponseData({
        this.respStatus,
    });

    factory CheckPasswordResponseData.fromJson(Map<String, dynamic> json) => CheckPasswordResponseData(
        respStatus: json["respStatus"] == null ? null : CheckPasswordRespStatus.fromJson(json["respStatus"]),
    );

    Map<String, dynamic> toJson() => {
        "respStatus": respStatus?.toJson(),
    };
}

class CheckPasswordRespStatus {
    String? statusCode;
    String? message;

    CheckPasswordRespStatus({
        this.statusCode,
        this.message,
    });

    factory CheckPasswordRespStatus.fromJson(Map<String, dynamic> json) => CheckPasswordRespStatus(
        statusCode: json["StatusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "StatusCode": statusCode,
        "message": message,
    };
}
