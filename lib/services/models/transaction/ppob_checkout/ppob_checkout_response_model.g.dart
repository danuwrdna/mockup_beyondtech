// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppob_checkout_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PpobCheckoutResponseModelImpl _$$PpobCheckoutResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobCheckoutResponseModelImpl(
      data: PpobCheckoutResponseData.fromJson(
          json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['status_code'] as String,
    );

Map<String, dynamic> _$$PpobCheckoutResponseModelImplToJson(
        _$PpobCheckoutResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PpobCheckoutResponseDataImpl _$$PpobCheckoutResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobCheckoutResponseDataImpl(
      formatted: PpobCheckoutDataFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      nominal: (json['nominal'] as num).toInt(),
      paymentMethod: PpobCheckoutDataPaymentMethod.fromJson(
          json['payment_method'] as Map<String, dynamic>),
      recepients: json['recepients'],
      totalAmount: (json['total_amount'] as num).toInt(),
      totalFee: (json['total_fee'] as num).toInt(),
    );

Map<String, dynamic> _$$PpobCheckoutResponseDataImplToJson(
        _$PpobCheckoutResponseDataImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'nominal': instance.nominal,
      'payment_method': instance.paymentMethod,
      'recepients': instance.recepients,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
    };

_$PpobCheckoutDataFormattedImpl _$$PpobCheckoutDataFormattedImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobCheckoutDataFormattedImpl(
      price: json['price'] as String,
      totalAmount: json['total_amount'] as String,
      totalFee: json['total_fee'] as String,
    );

Map<String, dynamic> _$$PpobCheckoutDataFormattedImplToJson(
        _$PpobCheckoutDataFormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
    };

_$PpobCheckoutDataPaymentMethodImpl
    _$$PpobCheckoutDataPaymentMethodImplFromJson(Map<String, dynamic> json) =>
        _$PpobCheckoutDataPaymentMethodImpl(
          code: json['code'] as String,
          currencyType: json['currency_type'] as String,
          fee: Fee.fromJson(json['fee'] as Map<String, dynamic>),
          formatted: PpobCheckoutDataPaymentMethodFormatted.fromJson(
              json['formatted'] as Map<String, dynamic>),
          name: json['name'] as String,
          payCode: json['pay_code'] as String,
          qrContent: json['qr_content'] as String,
          qrImage: json['qr_image'] as String,
        );

Map<String, dynamic> _$$PpobCheckoutDataPaymentMethodImplToJson(
        _$PpobCheckoutDataPaymentMethodImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'currency_type': instance.currencyType,
      'fee': instance.fee,
      'formatted': instance.formatted,
      'name': instance.name,
      'pay_code': instance.payCode,
      'qr_content': instance.qrContent,
      'qr_image': instance.qrImage,
    };

_$FeeImpl _$$FeeImplFromJson(Map<String, dynamic> json) => _$FeeImpl(
      formatted: json['Formatted'],
      amount: (json['amount'] as num).toInt(),
      currencyPrefix: json['currency_prefix'] as String,
      currencyType: json['currency_type'] as String,
      featureFee: (json['feature_fee'] as num).toInt(),
      isFeatureFree: json['is_feature_free'] as bool,
      isPaymentFree: json['is_payment_free'] as bool,
      paymentChannelFee: (json['payment_channel_fee'] as num).toInt(),
    );

Map<String, dynamic> _$$FeeImplToJson(_$FeeImpl instance) => <String, dynamic>{
      'Formatted': instance.formatted,
      'amount': instance.amount,
      'currency_prefix': instance.currencyPrefix,
      'currency_type': instance.currencyType,
      'feature_fee': instance.featureFee,
      'is_feature_free': instance.isFeatureFree,
      'is_payment_free': instance.isPaymentFree,
      'payment_channel_fee': instance.paymentChannelFee,
    };

_$PpobCheckoutDataPaymentMethodFormattedImpl
    _$$PpobCheckoutDataPaymentMethodFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobCheckoutDataPaymentMethodFormattedImpl(
          price: json['price'] as String,
        );

Map<String, dynamic> _$$PpobCheckoutDataPaymentMethodFormattedImplToJson(
        _$PpobCheckoutDataPaymentMethodFormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
