// To parse this JSON data, do
//
//     final balanceTopUpResponseModel = balanceTopUpResponseModelFromJson(jsonString);

import 'dart:convert';

BalanceTopUpResponseModel balanceTopUpResponseModelFromJson(String str) => BalanceTopUpResponseModel.fromJson(json.decode(str));

String balanceTopUpResponseModelToJson(BalanceTopUpResponseModel data) => json.encode(data.toJson());

class BalanceTopUpResponseModel {
    BalanceTopUpData? data;
    String? message;
    String? statusCode;

    BalanceTopUpResponseModel({
        this.data,
        this.message,
        this.statusCode,
    });

    factory BalanceTopUpResponseModel.fromJson(Map<String, dynamic> json) => BalanceTopUpResponseModel(
        data: json["data"] == null ? null : BalanceTopUpData.fromJson(json["data"]),
        message: json["message"],
        statusCode: json["status_code"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "message": message,
        "status_code": statusCode,
    };
}

class BalanceTopUpData {
    int? createdAt;
    PaymentTransfer? customerPaymentTransfer;
    int? expectedPayoutDate;
    int? expiredAt;
    Formatted? formatted;
    Instructions? instructions;
    String? notes;
    int? paidAt;
    String? payCode;
    String? paymentCode;
    PaymentFee? paymentFee;
    String? paymentName;
    String? qrContent;
    String? qrImage;
    Rate? rate;
    PaymentTransfer? recepientPaymentTransfer;
    String? refId;
    String? statusTransaction;
    String? subStatusTransaction;
    PaymentFee? totalPayment;
    String? trxId;
    int? uniqueCode;

    BalanceTopUpData({
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

    factory BalanceTopUpData.fromJson(Map<String, dynamic> json) => BalanceTopUpData(
        createdAt: json["created_at"],
        customerPaymentTransfer: json["customer_payment_transfer"] == null ? null : PaymentTransfer.fromJson(json["customer_payment_transfer"]),
        expectedPayoutDate: json["expected_payout_date"],
        expiredAt: json["expired_at"],
        formatted: json["formatted"] == null ? null : Formatted.fromJson(json["formatted"]),
        instructions: json["instructions"] == null ? null : Instructions.fromJson(json["instructions"]),
        notes: json["notes"],
        paidAt: json["paid_at"],
        payCode: json["pay_code"],
        paymentCode: json["payment_code"],
        paymentFee: json["payment_fee"] == null ? null : PaymentFee.fromJson(json["payment_fee"]),
        paymentName: json["payment_name"],
        qrContent: json["qr_content"],
        qrImage: json["qr_image"],
        rate: json["rate"] == null ? null : Rate.fromJson(json["rate"]),
        recepientPaymentTransfer: json["recepient_payment_transfer"] == null ? null : PaymentTransfer.fromJson(json["recepient_payment_transfer"]),
        refId: json["ref_id"],
        statusTransaction: json["status_transaction"],
        subStatusTransaction: json["sub_status_transaction"],
        totalPayment: json["total_payment"] == null ? null : PaymentFee.fromJson(json["total_payment"]),
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

class PaymentTransfer {
    String? countryCode;
    String? currencyCode;
    String? customerName;
    String? phoneNumber;
    Nominal? receiveNominal;
    Nominal? sendNominal;

    PaymentTransfer({
        this.countryCode,
        this.currencyCode,
        this.customerName,
        this.phoneNumber,
        this.receiveNominal,
        this.sendNominal,
    });

    factory PaymentTransfer.fromJson(Map<String, dynamic> json) => PaymentTransfer(
        countryCode: json["country_code"],
        currencyCode: json["currency_code"],
        customerName: json["customer_name"],
        phoneNumber: json["phone_number"],
        receiveNominal: json["receive_nominal"] == null ? null : Nominal.fromJson(json["receive_nominal"]),
        sendNominal: json["send_nominal"] == null ? null : Nominal.fromJson(json["send_nominal"]),
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

class Nominal {
    dynamic formatted;
    int? nominal;

    Nominal({
        this.formatted,
        this.nominal,
    });

    factory Nominal.fromJson(Map<String, dynamic> json) => Nominal(
        formatted: json["formatted"],
        nominal: json["nominal"],
    );

    Map<String, dynamic> toJson() => {
        "formatted": formatted,
        "nominal": nominal,
    };
}

class Formatted {
    String? totalFee;
    String? totalPayment;
    String? uniqueCode;

    Formatted({
        this.totalFee,
        this.totalPayment,
        this.uniqueCode,
    });

    factory Formatted.fromJson(Map<String, dynamic> json) => Formatted(
        totalFee: json["total_fee"],
        totalPayment: json["total_payment"],
        uniqueCode: json["unique_code"],
    );

    Map<String, dynamic> toJson() => {
        "total_fee": totalFee,
        "total_payment": totalPayment,
        "unique_code": uniqueCode,
    };
}

class Instructions {
    dynamic steps;
    String? title;

    Instructions({
        this.steps,
        this.title,
    });

    factory Instructions.fromJson(Map<String, dynamic> json) => Instructions(
        steps: json["steps"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "steps": steps,
        "title": title,
    };
}

class PaymentFee {
    FormattedClass? formatted;
    int? amount;
    String? currencyPrefix;
    String? currencyType;
    int? featureFee;
    bool? isFeatureFree;
    bool? isPaymentFree;
    int? paymentChannelFee;

    PaymentFee({
        this.formatted,
        this.amount,
        this.currencyPrefix,
        this.currencyType,
        this.featureFee,
        this.isFeatureFree,
        this.isPaymentFree,
        this.paymentChannelFee,
    });

    factory PaymentFee.fromJson(Map<String, dynamic> json) => PaymentFee(
        formatted: json["Formatted"] == null ? null : FormattedClass.fromJson(json["Formatted"]),
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

class FormattedClass {
    String? featureFee;
    String? paymentFee;

    FormattedClass({
        this.featureFee,
        this.paymentFee,
    });

    factory FormattedClass.fromJson(Map<String, dynamic> json) => FormattedClass(
        featureFee: json["feature_fee"],
        paymentFee: json["payment_fee"],
    );

    Map<String, dynamic> toJson() => {
        "feature_fee": featureFee,
        "payment_fee": paymentFee,
    };
}

class Rate {
    dynamic formatted;
    int? fxRate;

    Rate({
        this.formatted,
        this.fxRate,
    });

    factory Rate.fromJson(Map<String, dynamic> json) => Rate(
        formatted: json["formatted"],
        fxRate: json["fx_rate"],
    );

    Map<String, dynamic> toJson() => {
        "formatted": formatted,
        "fx_rate": fxRate,
    };
}
