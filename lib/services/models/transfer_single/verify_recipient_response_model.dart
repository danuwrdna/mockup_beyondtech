import 'dart:convert';

VerifyRecipientResponseModel verifyRecipientResponseModelFromJson(String str) => VerifyRecipientResponseModel.fromJson(json.decode(str));

String verifyRecipientResponseModelToJson(VerifyRecipientResponseModel data) => json.encode(data.toJson());

class VerifyRecipientResponseModel {
  VerifyRecipientResponseData? data;
  String? message;
  String? statusCode;

  VerifyRecipientResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory VerifyRecipientResponseModel.fromJson(Map<String, dynamic> json) => VerifyRecipientResponseModel(
    data: json["data"] == null ? null : VerifyRecipientResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class VerifyRecipientResponseData {
  VerifyRecipientAdminFee? adminFee;
  String? bankCode;
  String? bankName;
  bool? isSaved;
  RecipientData? recipient;

  VerifyRecipientResponseData({
    this.adminFee,
    this.bankCode,
    this.bankName,
    this.isSaved,
    this.recipient,
  });

  factory VerifyRecipientResponseData.fromJson(Map<String, dynamic> json) => VerifyRecipientResponseData(
    adminFee: json["admin_fee"] == null ? null : VerifyRecipientAdminFee.fromJson(json["admin_fee"]),
    bankCode: json["bank_code"],
    bankName: json["bank_name"],
    isSaved: json["is_saved"],
    recipient: json["recepient"] == null ? null : RecipientData.fromJson(json["recepient"]),
  );

  Map<String, dynamic> toJson() => {
    "admin_fee": adminFee?.toJson(),
    "bank_code": bankCode,
    "bank_name": bankName,
    "is_saved": isSaved,
    "recepient": recipient?.toJson(),
  };
}

class VerifyRecipientAdminFee {
  VerifyRecipientFormatted? formatted;
  int? amount;
  String? currencyPrefix;
  String? currencyType;
  int? featureFee;
  bool? isFeatureFree;
  bool? isPaymentFree;
  int? paymentChannelFee;

  VerifyRecipientAdminFee({
    this.formatted,
    this.amount,
    this.currencyPrefix,
    this.currencyType,
    this.featureFee,
    this.isFeatureFree,
    this.isPaymentFree,
    this.paymentChannelFee,
  });

  factory VerifyRecipientAdminFee.fromJson(Map<String, dynamic> json) => VerifyRecipientAdminFee(
    formatted: json["Formatted"] == null ? null : VerifyRecipientFormatted.fromJson(json["Formatted"]),
    amount: json["amount"],
    currencyPrefix: json["currency_prefix"],
    currencyType: json["currency_type"],
    featureFee: json["feature_fee"],
    isFeatureFree: json["is_feature_free"],
    isPaymentFree: json["is_payment_free"],
    paymentChannelFee: json["payment_channel_fee"],
  );

  Map<String, dynamic> toJson() => {
    "Formatted": formatted?.toJson(),
    "amount": amount,
    "currency_prefix": currencyPrefix,
    "currency_type": currencyType,
    "feature_fee": featureFee,
    "is_feature_free": isFeatureFree,
    "is_payment_free": isPaymentFree,
    "payment_channel_fee": paymentChannelFee,
  };
}

class VerifyRecipientFormatted {
  String? price;

  VerifyRecipientFormatted({
    this.price,
  });

  factory VerifyRecipientFormatted.fromJson(Map<String, dynamic> json) => VerifyRecipientFormatted(
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
  };
}

class RecipientData {
  String? name;
  String? number;

  RecipientData({
    this.name,
    this.number,
  });

  factory RecipientData.fromJson(Map<String, dynamic> json) => RecipientData(
    name: json["name"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "number": number,
  };
}
