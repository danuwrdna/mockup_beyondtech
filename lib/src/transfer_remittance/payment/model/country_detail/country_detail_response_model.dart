import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'country_detail_response_model.freezed.dart';

part 'country_detail_response_model.g.dart';

RemittanceCountryDetailResponseModel
    remittanceCountryDetailResponseModelFromJson(String str) =>
        RemittanceCountryDetailResponseModel.fromJson(json.decode(str));

String remittanceCountryDetailResponseModelToJson(
        RemittanceCountryDetailResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RemittanceCountryDetailResponseModel
    with _$RemittanceCountryDetailResponseModel {
  const factory RemittanceCountryDetailResponseModel({
    @JsonKey(name: "data") required RemittanceCountryDetailData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _RemittanceCountryDetailResponseModel;

  factory RemittanceCountryDetailResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceCountryDetailResponseModelFromJson(json);
}

@freezed
class RemittanceCountryDetailData with _$RemittanceCountryDetailData {
  const factory RemittanceCountryDetailData({
    @JsonKey(name: "country_code_iso2") required String countryCodeIso2,
    @JsonKey(name: "country_code_iso3") required String countryCodeIso3,
    @JsonKey(name: "country_name") required String countryName,
    @JsonKey(name: "currency_code") required String currencyCode,
    @JsonKey(name: "indicative_rate_active") required bool indicativeRateActive,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "is_receive_active") required bool isReceiveActive,
    @JsonKey(name: "is_send_active") required bool isSendActive,
    @JsonKey(name: "phone_dials") required List<String> phoneDials,
    @JsonKey(name: "receive_currencies")
    required List<String> receiveCurrencies,
    @JsonKey(name: "send_currency") required List<String> sendCurrency,
    @JsonKey(name: "sub_country")
    required List<RemittanceCountryDetailDataSubCountry> subCountry,
  }) = _RemittanceCountryDetailData;

  factory RemittanceCountryDetailData.fromJson(Map<String, dynamic> json) =>
      _$RemittanceCountryDetailDataFromJson(json);
}

@freezed
class RemittanceCountryDetailDataSubCountry
    with _$RemittanceCountryDetailDataSubCountry {
  const factory RemittanceCountryDetailDataSubCountry({
    @JsonKey(name: "code_name") required String codeName,
    @JsonKey(name: "name") required String name,
  }) = _RemittanceCountryDetailDataSubCountry;

  factory RemittanceCountryDetailDataSubCountry.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceCountryDetailDataSubCountryFromJson(json);
}
