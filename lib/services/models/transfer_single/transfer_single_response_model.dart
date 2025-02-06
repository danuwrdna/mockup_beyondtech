import 'dart:convert';

TransferSingleResponseModel transferSingleResponseModelFromJson(String str) => TransferSingleResponseModel.fromJson(json.decode(str));

String transferSingleResponseModelToJson(TransferSingleResponseModel data) => json.encode(data.toJson());

class TransferSingleResponseModel {
  TransferSingleResponseData? data;
  String? message;
  String? statusCode;

  TransferSingleResponseModel({
    this.data,
    this.message,
    this.statusCode,
  });

  factory TransferSingleResponseModel.fromJson(Map<String, dynamic> json) => TransferSingleResponseModel(
    data: json["data"] == null ? null : TransferSingleResponseData.fromJson(json["data"]),
    message: json["message"],
    statusCode: json["status_code"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "status_code": statusCode,
  };
}

class TransferSingleResponseData {
  int? createdAt;
  TransferSinglePaymentTransfer? customerPaymentTransfer;
  int? expectedPayoutDate;
  int? expiredAt;
  TransferSingleFormatted? formatted;
  TransferSingleInstructions? instructions;
  String? notes;
  int? paidAt;
  String? payCode;
  String? paymentCode;
  TransferSinglePaymentFee? paymentFee;
  String? paymentName;
  String? qrContent;
  String? qrImage;
  TransferSingleRate? rate;
  TransferSinglePaymentTransfer? recepientPaymentTransfer;
  String? refId;
  String? statusTransaction;
  String? subStatusTransaction;
  TransferSingleTotalPayment? totalPayment;
  String? trxId;
  int? uniqueCode;

  TransferSingleResponseData({
    this.createdAt,
    this.customerPaymentTransfer,
    this.expectedPayoutDate,
    this.expiredAt,
    this.formatted,
    this.instructions,
    this.notes,
    this.paidAt,
    this.payCode,
    this.paymentCode,
    this.paymentFee,
    this.paymentName,
    this.qrContent,
    this.qrImage,
    this.rate,
    this.recepientPaymentTransfer,
    this.refId,
    this.statusTransaction,
    this.subStatusTransaction,
    this.totalPayment,
    this.trxId,
    this.uniqueCode,
  });

  factory TransferSingleResponseData.fromJson(Map<String, dynamic> json) => TransferSingleResponseData(
    createdAt: json["created_at"],
    customerPaymentTransfer: json["customer_payment_transfer"] == null ? null : TransferSinglePaymentTransfer.fromJson(json["customer_payment_transfer"]),
    expectedPayoutDate: json["expected_payout_date"],
    expiredAt: json["expired_at"],
    formatted: json["formatted"] == null ? null : TransferSingleFormatted.fromJson(json["formatted"]),
    instructions: json["instructions"] == null ? null : TransferSingleInstructions.fromJson(json["instructions"]),
    notes: json["notes"],
    paidAt: json["paid_at"],
    payCode: json["pay_code"],
    paymentCode: json["payment_code"],
    paymentFee: json["payment_fee"] == null ? null : TransferSinglePaymentFee.fromJson(json["payment_fee"]),
    paymentName: json["payment_name"],
    qrContent: json["qr_content"],
    qrImage: json["qr_image"],
    rate: json["rate"] == null ? null : TransferSingleRate.fromJson(json["rate"]),
    recepientPaymentTransfer: json["recepient_payment_transfer"] == null ? null : TransferSinglePaymentTransfer.fromJson(json["recepient_payment_transfer"]),
    refId: json["ref_id"],
    statusTransaction: json["status_transaction"],
    subStatusTransaction: json["sub_status_transaction"],
    totalPayment: json["total_payment"] == null ? null : TransferSingleTotalPayment.fromJson(json["total_payment"]),
    trxId: json["trx_id"],
    uniqueCode: json["unique_code"],
  );

  Map<String, dynamic> toJson() => {
    "created_at": createdAt,
    "customer_payment_transfer": customerPaymentTransfer?.toJson(),
    "expected_payout_date": expectedPayoutDate,
    "expired_at": expiredAt,
    "formatted": formatted?.toJson(),
    "instructions": instructions?.toJson(),
    "notes": notes,
    "paid_at": paidAt,
    "pay_code": payCode,
    "payment_code": paymentCode,
    "payment_fee": paymentFee?.toJson(),
    "payment_name": paymentName,
    "qr_content": qrContent,
    "qr_image": qrImage,
    "rate": rate?.toJson(),
    "recepient_payment_transfer": recepientPaymentTransfer?.toJson(),
    "ref_id": refId,
    "status_transaction": statusTransaction,
    "sub_status_transaction": subStatusTransaction,
    "total_payment": totalPayment?.toJson(),
    "trx_id": trxId,
    "unique_code": uniqueCode,
  };
}

class TransferSinglePaymentTransfer {
  String? countryCode;
  String? currencyCode;
  String? customerName;
  String? phoneNumber;
  TransferSinglePaymentTransferNominal? receiveNominal;
  TransferSinglePaymentTransferNominal? sendNominal;

  TransferSinglePaymentTransfer({
    this.countryCode,
    this.currencyCode,
    this.customerName,
    this.phoneNumber,
    this.receiveNominal,
    this.sendNominal,
  });

  factory TransferSinglePaymentTransfer.fromJson(Map<String, dynamic> json) => TransferSinglePaymentTransfer(
    countryCode: json["country_code"],
    currencyCode: json["currency_code"],
    customerName: json["customer_name"],
    phoneNumber: json["phone_number"],
    receiveNominal: json["receive_nominal"] == null ? null : TransferSinglePaymentTransferNominal.fromJson(json["receive_nominal"]),
    sendNominal: json["send_nominal"] == null ? null : TransferSinglePaymentTransferNominal.fromJson(json["send_nominal"]),
  );

  Map<String, dynamic> toJson() => {
    "country_code": countryCode,
    "currency_code": currencyCode,
    "customer_name": customerName,
    "phone_number": phoneNumber,
    "receive_nominal": receiveNominal?.toJson(),
    "send_nominal": sendNominal?.toJson(),
  };
}

class TransferSinglePaymentTransferNominal {
  dynamic formatted;
  int? nominal;

  TransferSinglePaymentTransferNominal({
    this.formatted,
    this.nominal,
  });

  factory TransferSinglePaymentTransferNominal.fromJson(Map<String, dynamic> json) => TransferSinglePaymentTransferNominal(
    formatted: json["formatted"],
    nominal: json["nominal"],
  );

  Map<String, dynamic> toJson() => {
    "formatted": formatted,
    "nominal": nominal,
  };
}

class TransferSingleFormatted {
  String? price;
  String? totalAmount;
  String? totalFee;
  String? uniqueCode;

  TransferSingleFormatted({
    this.price,
    this.totalAmount,
    this.totalFee,
    this.uniqueCode,
  });

  factory TransferSingleFormatted.fromJson(Map<String, dynamic> json) => TransferSingleFormatted(
    price: json["price"],
    totalAmount: json["total_amount"],
    totalFee: json["total_fee"],
    uniqueCode: json["unique_code"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "total_amount": totalAmount,
    "total_fee": totalFee,
    "unique_code": uniqueCode,
  };
}

class TransferSingleInstructions {
  dynamic steps;
  String? title;

  TransferSingleInstructions({
    this.steps,
    this.title,
  });

  factory TransferSingleInstructions.fromJson(Map<String, dynamic> json) => TransferSingleInstructions(
    steps: json["steps"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "steps": steps,
    "title": title,
  };
}

class TransferSinglePaymentFee {
  TransferSinglePaymentFeeFormatted? formatted;
  int? amount;
  String? currencyPrefix;
  String? currencyType;
  int? featureFee;
  bool? isFeatureFree;
  bool? isPaymentFree;
  int? paymentChannelFee;

  TransferSinglePaymentFee({
    this.formatted,
    this.amount,
    this.currencyPrefix,
    this.currencyType,
    this.featureFee,
    this.isFeatureFree,
    this.isPaymentFree,
    this.paymentChannelFee,
  });

  factory TransferSinglePaymentFee.fromJson(Map<String, dynamic> json) => TransferSinglePaymentFee(
    formatted: json["Formatted"] == null ? null : TransferSinglePaymentFeeFormatted.fromJson(json["Formatted"]),
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

class TransferSinglePaymentFeeFormatted {
  String? featureFee;
  String? paymentFee;
  String? price;

  TransferSinglePaymentFeeFormatted({
    this.featureFee,
    this.paymentFee,
    this.price,
  });

  factory TransferSinglePaymentFeeFormatted.fromJson(Map<String, dynamic> json) => TransferSinglePaymentFeeFormatted(
    featureFee: json["feature_fee"],
    paymentFee: json["payment_fee"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "feature_fee": featureFee,
    "payment_fee": paymentFee,
    "price": price,
  };
}

class TransferSingleRate {
  dynamic formatted;
  int? fxRate;

  TransferSingleRate({
    this.formatted,
    this.fxRate,
  });

  factory TransferSingleRate.fromJson(Map<String, dynamic> json) => TransferSingleRate(
    formatted: json["formatted"],
    fxRate: json["fx_rate"],
  );

  Map<String, dynamic> toJson() => {
    "formatted": formatted,
    "fx_rate": fxRate,
  };
}

class TransferSingleTotalPayment {
  TransferSingleTotalPaymentFormatted? formatted;
  int? amount;
  String? currencyPrefix;
  String? currencyType;
  int? featureFee;
  bool? isFeatureFree;
  bool? isPaymentFree;
  int? paymentChannelFee;

  TransferSingleTotalPayment({
    this.formatted,
    this.amount,
    this.currencyPrefix,
    this.currencyType,
    this.featureFee,
    this.isFeatureFree,
    this.isPaymentFree,
    this.paymentChannelFee,
  });

  factory TransferSingleTotalPayment.fromJson(Map<String, dynamic> json) => TransferSingleTotalPayment(
    formatted: json["Formatted"] == null ? null : TransferSingleTotalPaymentFormatted.fromJson(json["Formatted"]),
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

class TransferSingleTotalPaymentFormatted {
  String? price;

  TransferSingleTotalPaymentFormatted({
    this.price,
  });

  factory TransferSingleTotalPaymentFormatted.fromJson(Map<String, dynamic> json) => TransferSingleTotalPaymentFormatted(
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
  };
}