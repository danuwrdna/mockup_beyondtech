import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'remittance_detail_response_model.freezed.dart';

part 'remittance_detail_response_model.g.dart';

RemittanceDetailResponseModel remittanceDetailResponseModelFromJson(
        String str) =>
    RemittanceDetailResponseModel.fromJson(json.decode(str));

String remittanceDetailResponseModelToJson(
        RemittanceDetailResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RemittanceDetailResponseModel with _$RemittanceDetailResponseModel {
  const factory RemittanceDetailResponseModel({
    @JsonKey(name: "data") required RemittanceDetailData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _RemittanceDetailResponseModel;

  factory RemittanceDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RemittanceDetailResponseModelFromJson(json);
}

@freezed
class RemittanceDetailData with _$RemittanceDetailData {
  const factory RemittanceDetailData({
    @JsonKey(name: "fees") required RemittanceDetailDataFees fees,
    @JsonKey(name: "rate") required RemittanceDetailDataRate rate,
    @JsonKey(name: "receive_amount")
    required RemittanceDetailDataAmount receiveAmount,
    @JsonKey(name: "send_amount")
    required RemittanceDetailDataAmount sendAmount,
  }) = _RemittanceDetailData;

  factory RemittanceDetailData.fromJson(Map<String, dynamic> json) =>
      _$RemittanceDetailDataFromJson(json);
}

@freezed
class RemittanceDetailDataFees with _$RemittanceDetailDataFees {
  const factory RemittanceDetailDataFees({
    @JsonKey(name: "formatted")
    required RemittanceDetailDataFeesFormatted formatted,
    @JsonKey(name: "is_admin_free") required bool isAdminFree,
    @JsonKey(name: "remmitance_fee") required int remmitanceFee,
    @JsonKey(name: "total_fee") required int totalFee,
    @JsonKey(name: "transaction_fee") required int transactionFee,
  }) = _RemittanceDetailDataFees;

  factory RemittanceDetailDataFees.fromJson(Map<String, dynamic> json) =>
      _$RemittanceDetailDataFeesFromJson(json);
}

@freezed
class RemittanceDetailDataFeesFormatted
    with _$RemittanceDetailDataFeesFormatted {
  const factory RemittanceDetailDataFeesFormatted({
    @JsonKey(name: "remmitance_fee") required String remmitanceFee,
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "transaction_fee") required String transactionFee,
  }) = _RemittanceDetailDataFeesFormatted;

  factory RemittanceDetailDataFeesFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceDetailDataFeesFormattedFromJson(json);
}

@freezed
class RemittanceDetailDataRate with _$RemittanceDetailDataRate {
  const factory RemittanceDetailDataRate({
    @JsonKey(name: "formatted")
    required RemittanceDetailDataRateFormatted formatted,
    @JsonKey(name: "fx_rate") required int fxRemittanceDetailDataRate,
  }) = _RemittanceDetailDataRate;

  factory RemittanceDetailDataRate.fromJson(Map<String, dynamic> json) =>
      _$RemittanceDetailDataRateFromJson(json);
}

@freezed
class RemittanceDetailDataRateFormatted
    with _$RemittanceDetailDataRateFormatted {
  const factory RemittanceDetailDataRateFormatted({
    @JsonKey(name: "nominal") required String nominal,
  }) = _RemittanceDetailDataRateFormatted;

  factory RemittanceDetailDataRateFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceDetailDataRateFormattedFromJson(json);
}

@freezed
class RemittanceDetailDataAmount with _$RemittanceDetailDataAmount {
  const factory RemittanceDetailDataAmount({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "currency_code") required String currencyCode,
    @JsonKey(name: "formatted")
    required RemittanceDetailDataRateFormatted formatted,
    @JsonKey(name: "nominal") required double nominal,
  }) = _RemittanceDetailDataAmount;

  factory RemittanceDetailDataAmount.fromJson(Map<String, dynamic> json) =>
      _$RemittanceDetailDataAmountFromJson(json);
}
