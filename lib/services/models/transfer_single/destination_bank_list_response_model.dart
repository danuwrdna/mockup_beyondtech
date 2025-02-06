import 'dart:convert';

DestinationBankListResponseModel destinationBankListResponseModelFromJson(String str) => DestinationBankListResponseModel.fromJson(json.decode(str));

String destinationBankListResponseModelToJson(DestinationBankListResponseModel data) => json.encode(data.toJson());

class DestinationBankListResponseModel {
  List<DestinationBankItem>? data;
  String? message;
  String? statusCode;

  DestinationBankListResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory DestinationBankListResponseModel.fromJson(Map<String, dynamic> json) => DestinationBankListResponseModel(
    data: json["data"] == null ? [] : List<DestinationBankItem>.from(json["data"]!.map((x) => DestinationBankItem.fromJson(x))),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "message": message,
    "status_code": statusCode,
  };
}

class DestinationBankItem {
  String? bankCode;
  String? bankId;
  String? bankName;
  String? currencyCode;
  String? iconUrl;
  bool? isActive;

  DestinationBankItem({
    this.bankCode,
    this.bankId,
    this.bankName,
    this.currencyCode,
    this.iconUrl,
    this.isActive,
  });

  factory DestinationBankItem.fromJson(Map<String, dynamic> json) => DestinationBankItem(
    bankCode: json["bank_code"],
    bankId: json["bank_id"],
    bankName: json["bank_name"],
    currencyCode: json["currency_code"],
    iconUrl: json["icon_url"],
    isActive: json["is_active"],
  );

  Map<String, dynamic> toJson() => {
    "bank_code": bankCode,
    "bank_id": bankId,
    "bank_name": bankName,
    "currency_code": currencyCode,
    "icon_url": iconUrl,
    "is_active": isActive,
  };
}
