import 'dart:convert';


BcareGetMessageResponseModel bcareSessionResponseModelFromJson(String str) =>
    BcareGetMessageResponseModel.fromJson(json.decode(str));

String bcareSessionResponseModelToJson(BcareGetMessageResponseModel data) =>
    json.encode(data.toJson());

class BcareGetMessageResponseModel {
  BcareGetMessageData? data;

  BcareGetMessageResponseModel({
    this.data,
  });

  factory BcareGetMessageResponseModel.fromJson(Map<String, dynamic> json) =>
      BcareGetMessageResponseModel(
        data: json["data"] == null
            ? null
            : BcareGetMessageData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class BcareGetMessageData {
  String? statusCode;
  String? message;
  List<GetMessageData>? data;

  BcareGetMessageData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory BcareGetMessageData.fromJson(Map<String, dynamic> json) =>
      BcareGetMessageData(
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<GetMessageData>.from(
                json["data"]!.map((x) => GetMessageData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  map(GetMessageData Function(dynamic message) param0) {}
}

class GetMessageData {
  String? message;
  DateTime? createdAt;
  String? fullname;
  String? sender;

  GetMessageData({
    this.message,
    this.createdAt,
    this.fullname,
    this.sender,
  });

  factory GetMessageData.fromJson(Map<String, dynamic> json) => GetMessageData(
        message: json["message"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        fullname: json["fullname"],
        sender: json["sender"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "createdAt": createdAt?.toIso8601String(),
        "fullname": fullname,
        "sender": sender,
      };
}
