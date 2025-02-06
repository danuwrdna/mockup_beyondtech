import 'dart:convert';

TransferSingleDetailResponseModel transferSingleDetailResponseModelFromJson(String str) => TransferSingleDetailResponseModel.fromJson(json.decode(str));

String transferSingleDetailResponseModelToJson(TransferSingleDetailResponseModel data) => json.encode(data.toJson());

class TransferSingleDetailResponseModel {
  TransferSingleDetailResponseData? data;
  String? message;
  String? statusCode;

  TransferSingleDetailResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory TransferSingleDetailResponseModel.fromJson(Map<String, dynamic> json) => TransferSingleDetailResponseModel(
    data: json["data"] == null ? null : TransferSingleDetailResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class TransferSingleDetailResponseData {
  TransferSingleDetailDataFormatted? formatted;
  int? nominal;
  TransferSingleDetailPaymentMethod? paymentMethod;
  List<TransferSingleDetailDataRecipient>? recipients;
  int? totalAmount;
  num? totalFee;

  TransferSingleDetailResponseData({
    this.formatted,
    this.nominal,
    this.paymentMethod,
    this.recipients,
    this.totalAmount,
    this.totalFee,
  });

  factory TransferSingleDetailResponseData.fromJson(Map<String, dynamic> json) => TransferSingleDetailResponseData(
    formatted: json["formatted"] == null ? null : TransferSingleDetailDataFormatted.fromJson(json["formatted"]),
    nominal: json["nominal"],
    paymentMethod: json["payment_method"] == null ? null : TransferSingleDetailPaymentMethod.fromJson(json["payment_method"]),
    recipients: json["recepients"] == null ? [] : List<TransferSingleDetailDataRecipient>.from(json["recepients"]!.map((x) => TransferSingleDetailDataRecipient.fromJson(x))),
    totalAmount: json["total_amount"],
    totalFee: json["total_fee"],
  );

  Map<String, dynamic> toJson() => {
    "formatted": formatted?.toJson(),
    "nominal": nominal,
    "payment_method": paymentMethod?.toJson(),
    "recepients": recipients == null ? [] : List<dynamic>.from(recipients!.map((x) => x.toJson())),
    "total_amount": totalAmount,
    "total_fee": totalFee,
  };
}

class TransferSingleDetailDataFormatted {
  String? price;
  String? totalAmount;
  String? totalFee;

  TransferSingleDetailDataFormatted({
    this.price,
    this.totalAmount,
    this.totalFee,
  });

  factory TransferSingleDetailDataFormatted.fromJson(Map<String, dynamic> json) => TransferSingleDetailDataFormatted(
    price: json["price"],
    totalAmount: json["total_amount"],
    totalFee: json["total_fee"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "total_amount": totalAmount,
    "total_fee": totalFee,
  };
}

class TransferSingleDetailPaymentMethod {
  String? code;
  String? currencyType;
  TransferSingleDetailPaymentMethodFee? fee;
  TransferSingleDetailPaymentMethodFormatted? formatted;
  String? name;
  String? payCode;
  String? qrContent;
  String? qrImage;

  TransferSingleDetailPaymentMethod({
    this.code,
    this.currencyType,
    this.fee,
    this.formatted,
    this.name,
    this.payCode,
    this.qrContent,
    this.qrImage,
  });

  factory TransferSingleDetailPaymentMethod.fromJson(Map<String, dynamic> json) => TransferSingleDetailPaymentMethod(
    code: json["code"],
    currencyType: json["currency_type"],
    fee: json["fee"] == null ? null : TransferSingleDetailPaymentMethodFee.fromJson(json["fee"]),
    formatted: json["formatted"] == null ? null : TransferSingleDetailPaymentMethodFormatted.fromJson(json["formatted"]),
    name: json["name"],
    payCode: json["pay_code"],
    qrContent: json["qr_content"],
    qrImage: json["qr_image"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "currency_type": currencyType,
    "fee": fee?.toJson(),
    "formatted": formatted?.toJson(),
    "name": name,
    "pay_code": payCode,
    "qr_content": qrContent,
    "qr_image": qrImage,
  };
}

class TransferSingleDetailPaymentMethodFee {
  TransferSingleDetailPaymentMethodFeeFormatted? formatted;
  int? amount;
  String? currencyPrefix;
  String? currencyType;
  int? featureFee;
  bool? isFeatureFree;
  bool? isPaymentFree;
  num? paymentChannelFee;

  TransferSingleDetailPaymentMethodFee({
    this.formatted,
    this.amount,
    this.currencyPrefix,
    this.currencyType,
    this.featureFee,
    this.isFeatureFree,
    this.isPaymentFree,
    this.paymentChannelFee,
  });

  factory TransferSingleDetailPaymentMethodFee.fromJson(Map<String, dynamic> json) => TransferSingleDetailPaymentMethodFee(
    formatted: json["Formatted"] == null ? null : TransferSingleDetailPaymentMethodFeeFormatted.fromJson(json["Formatted"]),
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

class TransferSingleDetailPaymentMethodFeeFormatted {
  String? totalFee;

  TransferSingleDetailPaymentMethodFeeFormatted({
    this.totalFee,
  });

  factory TransferSingleDetailPaymentMethodFeeFormatted.fromJson(Map<String, dynamic> json) => TransferSingleDetailPaymentMethodFeeFormatted(
    totalFee: json["total_fee"],
  );

  Map<String, dynamic> toJson() => {
    "total_fee": totalFee,
  };
}

class TransferSingleDetailPaymentMethodFormatted {
  String? price;

  TransferSingleDetailPaymentMethodFormatted({
    this.price,
  });

  factory TransferSingleDetailPaymentMethodFormatted.fromJson(Map<String, dynamic> json) => TransferSingleDetailPaymentMethodFormatted(
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
  };
}

class TransferSingleDetailDataRecipient {
  String? accountName;
  String? accountNumber;
  String? bankCode;
  String? bankName;
  String? currencyType;
  TransferSingleDetailPaymentMethodFormatted? formatted;
  int? nominal;
  TransferSingleDetailPaymentMethodFee? transferFee;

  TransferSingleDetailDataRecipient({
    this.accountName,
    this.accountNumber,
    this.bankCode,
    this.bankName,
    this.currencyType,
    this.formatted,
    this.nominal,
    this.transferFee,
  });

  factory TransferSingleDetailDataRecipient.fromJson(Map<String, dynamic> json) => TransferSingleDetailDataRecipient(
    accountName: json["account_name"],
    accountNumber: json["account_number"],
    bankCode: json["bank_code"],
    bankName: json["bank_name"],
    currencyType: json["currency_type"],
    formatted: json["formatted"] == null ? null : TransferSingleDetailPaymentMethodFormatted.fromJson(json["formatted"]),
    nominal: json["nominal"],
    transferFee: json["transfer_fee"] == null ? null : TransferSingleDetailPaymentMethodFee.fromJson(json["transfer_fee"]),
  );

  Map<String, dynamic> toJson() => {
    "account_name": accountName,
    "account_number": accountNumber,
    "bank_code": bankCode,
    "bank_name": bankName,
    "currency_type": currencyType,
    "formatted": formatted?.toJson(),
    "nominal": nominal,
    "transfer_fee": transferFee?.toJson(),
  };
}