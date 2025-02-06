import 'dart:convert';

TransactionCheckoutResponseModel transactionCheckoutResponseModelFromJson(
        String str) =>
    TransactionCheckoutResponseModel.fromJson(json.decode(str));

String transactionCheckoutResponseModelToJson(
        TransactionCheckoutResponseModel data) =>
    json.encode(data.toJson());

class TransactionCheckoutResponseModel {
  TransactionCheckoutData? data;
  String? message;
  String? statusCode;

  TransactionCheckoutResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory TransactionCheckoutResponseModel.fromJson(
          Map<String, dynamic> json) =>
      TransactionCheckoutResponseModel(
        data: json["data"] == null ? null : TransactionCheckoutData.fromJson(json["data"]),
        message: json["message"],
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "message": message,
        "status_code": statusCode,
      };
}

class TransactionCheckoutData {
  DataFormatted? formatted;
  int? nominal;
  PaymentMethod? paymentMethod;
  dynamic recepients;
  int? totalAmount;
  num? totalFee;

  TransactionCheckoutData({
    this.formatted,
    this.nominal,
    this.paymentMethod,
    this.recepients,
    this.totalAmount,
    this.totalFee,
  });

  factory TransactionCheckoutData.fromJson(Map<String, dynamic> json) => TransactionCheckoutData(
        formatted: json["formatted"] == null
            ? null
            : DataFormatted.fromJson(json["formatted"]),
        nominal: json["nominal"],
        paymentMethod: json["payment_method"] == null
            ? null
            : PaymentMethod.fromJson(json["payment_method"]),
        recepients: json["recepients"],
        totalAmount: json["total_amount"],
        totalFee: json["total_fee"],
      );

  Map<String, dynamic> toJson() => {
        "formatted": formatted?.toJson(),
        "nominal": nominal,
        "payment_method": paymentMethod?.toJson(),
        "recepients": recepients,
        "total_amount": totalAmount,
        "total_fee": totalFee,
      };
}

class DataFormatted {
  String? price;
  String? totalAmount;
  String? totalFee;

  DataFormatted({
    this.price,
    this.totalAmount,
    this.totalFee,
  });

  factory DataFormatted.fromJson(Map<String, dynamic> json) => DataFormatted(
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

class PaymentMethod {
  String? code;
  String? currencyType;
  Fee? fee;
  PaymentMethodFormatted? formatted;
  String? name;
  String? payCode;
  String? qrContent;
  String? qrImage;

  PaymentMethod({
    this.code,
    this.currencyType,
    this.fee,
    this.formatted,
    this.name,
    this.payCode,
    this.qrContent,
    this.qrImage,
  });

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
        code: json["code"],
        currencyType: json["currency_type"],
        fee: json["fee"] == null ? null : Fee.fromJson(json["fee"]),
        formatted: json["formatted"] == null
            ? null
            : PaymentMethodFormatted.fromJson(json["formatted"]),
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

class Fee {
  dynamic formatted;
  int? amount;
  String? currencyPrefix;
  String? currencyType;
  int? featureFee;
  bool? isFeatureFree;
  bool? isPaymentFree;
  num? paymentChannelFee;

  Fee({
    this.formatted,
    this.amount,
    this.currencyPrefix,
    this.currencyType,
    this.featureFee,
    this.isFeatureFree,
    this.isPaymentFree,
    this.paymentChannelFee,
  });

  factory Fee.fromJson(Map<String, dynamic> json) => Fee(
        formatted: json["Formatted"],
        amount: json["amount"],
        currencyPrefix: json["currency_prefix"],
        currencyType: json["currency_type"],
        featureFee: json["feature_fee"],
        isFeatureFree: json["is_feature_free"],
        isPaymentFree: json["is_payment_free"],
        paymentChannelFee: json["payment_channel_fee"],
      );

  Map<String, dynamic> toJson() => {
        "Formatted": formatted,
        "amount": amount,
        "currency_prefix": currencyPrefix,
        "currency_type": currencyType,
        "feature_fee": featureFee,
        "is_feature_free": isFeatureFree,
        "is_payment_free": isPaymentFree,
        "payment_channel_fee": paymentChannelFee,
      };
}

class PaymentMethodFormatted {
  String? price;

  PaymentMethodFormatted({
    this.price,
  });

  factory PaymentMethodFormatted.fromJson(Map<String, dynamic> json) =>
      PaymentMethodFormatted(
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "price": price,
      };
}
