import 'dart:convert';

GetExchangeRateResponseModel getExchangeRateResponseModelFromJson(String str) => GetExchangeRateResponseModel.fromJson(json.decode(str));

String getExchangeRateResponseModelToJson(GetExchangeRateResponseModel data) => json.encode(data.toJson());

class GetExchangeRateResponseModel {
  String? statusCode;
  GetExchangeRateResponseData? data;
  String? message;

  GetExchangeRateResponseModel({
    this.statusCode,
    this.data,
    this.message,
  });

  factory GetExchangeRateResponseModel.fromJson(Map<String, dynamic> json) => GetExchangeRateResponseModel(
    statusCode: json["status_code"],
    data: json["data"] == null ? null : GetExchangeRateResponseData.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status_code": statusCode,
    "data": data?.toJson(),
    "message": message,
  };
}

class GetExchangeRateResponseData {
  String? serviceOptionCode;
  String? serviceOptionName;
  String? senderCountryCode;
  String? senderCurrencyCode;
  String? recipientCountryCode;
  String? recipientCurrencyCode;
  double? fxRate;
  bool? fxEstimated;

  GetExchangeRateResponseData({
    this.serviceOptionCode,
    this.serviceOptionName,
    this.senderCountryCode,
    this.senderCurrencyCode,
    this.recipientCountryCode,
    this.recipientCurrencyCode,
    this.fxRate,
    this.fxEstimated,
  });

  factory GetExchangeRateResponseData.fromJson(Map<String, dynamic> json) => GetExchangeRateResponseData(
    serviceOptionCode: json["service_option_code"],
    serviceOptionName: json["service_option_name"],
    senderCountryCode: json["sender_country_code"],
    senderCurrencyCode: json["sender_currency_code"],
    recipientCountryCode: json["recepient_country_code"],
    recipientCurrencyCode: json["recepient_currency_code"],
    fxRate: json["fx_rate"]?.toDouble(),
    fxEstimated: json["fx_estimated"],
  );

  Map<String, dynamic> toJson() => {
    "service_option_code": serviceOptionCode,
    "service_option_name": serviceOptionName,
    "sender_country_code": senderCountryCode,
    "sender_currency_code": senderCurrencyCode,
    "recepient_country_code": recipientCountryCode,
    "recepient_currency_code": recipientCurrencyCode,
    "fx_rate": fxRate,
    "fx_estimated": fxEstimated,
  };
}