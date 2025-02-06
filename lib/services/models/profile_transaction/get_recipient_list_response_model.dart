import 'dart:convert';

GetRecipientListResponseModel getRecipientListResponseModelFromJson(String str) => GetRecipientListResponseModel.fromJson(json.decode(str));

String getRecipientListResponseModelToJson(GetRecipientListResponseModel data) => json.encode(data.toJson());

class GetRecipientListResponseModel {
  GetRecipientListResponseData? data;

  GetRecipientListResponseModel({
    this.data,
  });

  factory GetRecipientListResponseModel.fromJson(Map<String, dynamic> json) => GetRecipientListResponseModel(
    data: json["data"] == null ? null : GetRecipientListResponseData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
  };
}

class GetRecipientListResponseData {
  String? statusCode;
  String? message;
  List<RecipientListItem>? data;

  GetRecipientListResponseData({
    this.statusCode,
    this.message,
    this.data,
  });

  factory GetRecipientListResponseData.fromJson(Map<String, dynamic> json) => GetRecipientListResponseData(
    statusCode: json["statusCode"],
    message: json["message"],
    data: json["data"] == null ? [] : List<RecipientListItem>.from(json["data"]!.map((x) => RecipientListItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class RecipientListItem {
  String? recipientId;
  String? recipientName;
  RecipientListItemBank? bank;
  String? transferType;
  bool? isSaved;

  RecipientListItem({
    this.recipientId,
    this.recipientName,
    this.bank,
    this.transferType,
    this.isSaved,
  });

  factory RecipientListItem.fromJson(Map<String, dynamic> json) => RecipientListItem(
    recipientId: json["RecipientId"],
    recipientName: json["RecipientName"],
    bank: json["Bank"] == null ? null : RecipientListItemBank.fromJson(json["Bank"]),
    transferType: json["TransferType"],
    isSaved: json["IsSaved"],
  );

  Map<String, dynamic> toJson() => {
    "RecipientId": recipientId,
    "RecipientName": recipientName,
    "Bank": bank?.toJson(),
    "TransferType": transferType,
    "IsSaved": isSaved,
  };
}

class RecipientListItemBank {
  String? code;
  String? number;
  String? currency;

  RecipientListItemBank({
    this.code,
    this.number,
    this.currency,
  });

  factory RecipientListItemBank.fromJson(Map<String, dynamic> json) => RecipientListItemBank(
    code: json["Code"],
    number: json["Number"],
    currency: json["Currency"],
  );

  Map<String, dynamic> toJson() => {
    "Code": code,
    "Number": number,
    "Currency": currency,
  };
}