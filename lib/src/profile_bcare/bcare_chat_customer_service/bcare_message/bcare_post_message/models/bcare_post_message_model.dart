import 'dart:convert';

import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/models/bcare_get_message_model.dart';

BcarePostMessageResponseModel bcarePostMessageResponseModelFromJson(String str) => BcarePostMessageResponseModel.fromJson(json.decode(str));

String bcarePostMessageResponseModelToJson(BcarePostMessageResponseModel data) => json.encode(data.toJson());

class BcarePostMessageResponseModel {
    BcarePostMessageData? data;

    BcarePostMessageResponseModel({
        this.data,
    });

    factory BcarePostMessageResponseModel.fromJson(Map<String, dynamic> json) => BcarePostMessageResponseModel(
        data: json["data"] == null ? null : BcarePostMessageData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
    };
}

class BcarePostMessageData {
    String? statusCode;
    String? message;
    List<GetMessageData>? data;

    BcarePostMessageData({
        this.statusCode,
        this.message,
        this.data,
    });

    factory BcarePostMessageData.fromJson(Map<String, dynamic> json) => BcarePostMessageData(
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? [] : List<GetMessageData>.from(json["data"]!.map((x) => GetMessageData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}
