import 'dart:convert';

ChangePinResponseModel changePinResponseModelFromJson(String str) => ChangePinResponseModel.fromJson(json.decode(str));

String changePinResponseModelToJson(ChangePinResponseModel data) => json.encode(data.toJson());

class ChangePinResponseModel {
    ChangePinResponseModel? data;

    ChangePinResponseModel({
        this.data,
    });

    factory ChangePinResponseModel.fromJson(Map<String, dynamic> json) => ChangePinResponseModel(
        data: json["data"] == null ? null : ChangePinResponseModel.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class ChangePinResponseData {
    ChangePinRespStatus? respStatus;

    ChangePinResponseData({
        this.respStatus,
    });

    factory ChangePinResponseData.fromJson(Map<String, dynamic> json) => ChangePinResponseData(
        respStatus: json["respStatus"] == null ? null : ChangePinRespStatus.fromJson(json["respStatus"]),
    );

    Map<String, dynamic> toJson() => {
        "respStatus": respStatus?.toJson(),
    };
}

class ChangePinRespStatus {
    String? statusCode;
    String? message;

    ChangePinRespStatus({
        this.statusCode,
        this.message,
    });

    factory ChangePinRespStatus.fromJson(Map<String, dynamic> json) => ChangePinRespStatus(
        statusCode: json["StatusCode"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "StatusCode": statusCode,
        "message": message,
    };
}
