// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemittanceCountryDetailResponseModelImpl
    _$$RemittanceCountryDetailResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceCountryDetailResponseModelImpl(
          data: RemittanceCountryDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['status_code'] as String,
        );

Map<String, dynamic> _$$RemittanceCountryDetailResponseModelImplToJson(
        _$RemittanceCountryDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$RemittanceCountryDetailDataImpl _$$RemittanceCountryDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceCountryDetailDataImpl(
      countryCodeIso2: json['country_code_iso2'] as String,
      countryCodeIso3: json['country_code_iso3'] as String,
      countryName: json['country_name'] as String,
      currencyCode: json['currency_code'] as String,
      indicativeRateActive: json['indicative_rate_active'] as bool,
      isActive: json['is_active'] as bool,
      isReceiveActive: json['is_receive_active'] as bool,
      isSendActive: json['is_send_active'] as bool,
      phoneDials: (json['phone_dials'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      receiveCurrencies: (json['receive_currencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sendCurrency: (json['send_currency'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subCountry: (json['sub_country'] as List<dynamic>)
          .map((e) => RemittanceCountryDetailDataSubCountry.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RemittanceCountryDetailDataImplToJson(
        _$RemittanceCountryDetailDataImpl instance) =>
    <String, dynamic>{
      'country_code_iso2': instance.countryCodeIso2,
      'country_code_iso3': instance.countryCodeIso3,
      'country_name': instance.countryName,
      'currency_code': instance.currencyCode,
      'indicative_rate_active': instance.indicativeRateActive,
      'is_active': instance.isActive,
      'is_receive_active': instance.isReceiveActive,
      'is_send_active': instance.isSendActive,
      'phone_dials': instance.phoneDials,
      'receive_currencies': instance.receiveCurrencies,
      'send_currency': instance.sendCurrency,
      'sub_country': instance.subCountry,
    };

_$RemittanceCountryDetailDataSubCountryImpl
    _$$RemittanceCountryDetailDataSubCountryImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceCountryDetailDataSubCountryImpl(
          codeName: json['code_name'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$$RemittanceCountryDetailDataSubCountryImplToJson(
        _$RemittanceCountryDetailDataSubCountryImpl instance) =>
    <String, dynamic>{
      'code_name': instance.codeName,
      'name': instance.name,
    };
