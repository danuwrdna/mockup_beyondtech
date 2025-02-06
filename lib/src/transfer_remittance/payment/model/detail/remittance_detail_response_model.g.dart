// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remittance_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemittanceDetailResponseModelImpl
    _$$RemittanceDetailResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$RemittanceDetailResponseModelImpl(
          data: RemittanceDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['status_code'] as String,
        );

Map<String, dynamic> _$$RemittanceDetailResponseModelImplToJson(
        _$RemittanceDetailResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$RemittanceDetailDataImpl _$$RemittanceDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceDetailDataImpl(
      fees: RemittanceDetailDataFees.fromJson(
          json['fees'] as Map<String, dynamic>),
      rate: RemittanceDetailDataRate.fromJson(
          json['rate'] as Map<String, dynamic>),
      receiveAmount: RemittanceDetailDataAmount.fromJson(
          json['receive_amount'] as Map<String, dynamic>),
      sendAmount: RemittanceDetailDataAmount.fromJson(
          json['send_amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RemittanceDetailDataImplToJson(
        _$RemittanceDetailDataImpl instance) =>
    <String, dynamic>{
      'fees': instance.fees,
      'rate': instance.rate,
      'receive_amount': instance.receiveAmount,
      'send_amount': instance.sendAmount,
    };

_$RemittanceDetailDataFeesImpl _$$RemittanceDetailDataFeesImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceDetailDataFeesImpl(
      formatted: RemittanceDetailDataFeesFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      isAdminFree: json['is_admin_free'] as bool,
      remmitanceFee: (json['remmitance_fee'] as num).toInt(),
      totalFee: (json['total_fee'] as num).toInt(),
      transactionFee: (json['transaction_fee'] as num).toInt(),
    );

Map<String, dynamic> _$$RemittanceDetailDataFeesImplToJson(
        _$RemittanceDetailDataFeesImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'is_admin_free': instance.isAdminFree,
      'remmitance_fee': instance.remmitanceFee,
      'total_fee': instance.totalFee,
      'transaction_fee': instance.transactionFee,
    };

_$RemittanceDetailDataFeesFormattedImpl
    _$$RemittanceDetailDataFeesFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceDetailDataFeesFormattedImpl(
          remmitanceFee: json['remmitance_fee'] as String,
          totalFee: json['total_fee'] as String,
          transactionFee: json['transaction_fee'] as String,
        );

Map<String, dynamic> _$$RemittanceDetailDataFeesFormattedImplToJson(
        _$RemittanceDetailDataFeesFormattedImpl instance) =>
    <String, dynamic>{
      'remmitance_fee': instance.remmitanceFee,
      'total_fee': instance.totalFee,
      'transaction_fee': instance.transactionFee,
    };

_$RemittanceDetailDataRateImpl _$$RemittanceDetailDataRateImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceDetailDataRateImpl(
      formatted: RemittanceDetailDataRateFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      fxRemittanceDetailDataRate: (json['fx_rate'] as num).toInt(),
    );

Map<String, dynamic> _$$RemittanceDetailDataRateImplToJson(
        _$RemittanceDetailDataRateImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'fx_rate': instance.fxRemittanceDetailDataRate,
    };

_$RemittanceDetailDataRateFormattedImpl
    _$$RemittanceDetailDataRateFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceDetailDataRateFormattedImpl(
          nominal: json['nominal'] as String,
        );

Map<String, dynamic> _$$RemittanceDetailDataRateFormattedImplToJson(
        _$RemittanceDetailDataRateFormattedImpl instance) =>
    <String, dynamic>{
      'nominal': instance.nominal,
    };

_$RemittanceDetailDataAmountImpl _$$RemittanceDetailDataAmountImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceDetailDataAmountImpl(
      countryCode: json['country_code'] as String,
      currencyCode: json['currency_code'] as String,
      formatted: RemittanceDetailDataRateFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      nominal: (json['nominal'] as num).toDouble(),
    );

Map<String, dynamic> _$$RemittanceDetailDataAmountImplToJson(
        _$RemittanceDetailDataAmountImpl instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'currency_code': instance.currencyCode,
      'formatted': instance.formatted,
      'nominal': instance.nominal,
    };
