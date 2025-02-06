// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodListResponseModelImpl
    _$$PaymentMethodListResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$PaymentMethodListResponseModelImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => PaymentMethodItem.fromJson(e as Map<String, dynamic>))
              .toList(),
          message: json['message'] as String,
          statusCode: json['status_code'] as String,
        );

Map<String, dynamic> _$$PaymentMethodListResponseModelImplToJson(
        _$PaymentMethodListResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PaymentMethodItemImpl _$$PaymentMethodItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodItemImpl(
      currencyPrefix: json['currency_prefix'] as String,
      currencyType: json['currency_type'] as String,
      formatted: FormattedPaymentMethodNominal.fromJson(
          json['formatted'] as Map<String, dynamic>),
      iconUrl: json['icon_url'] as String,
      id: json['id'] as String,
      isActive: json['is_active'] as bool,
      minAmount: (json['min_amount'] as num).toInt(),
      paymentCode: json['payment_code'] as String,
      paymentGroup: json['payment_group'] as String,
      paymentName: json['payment_name'] as String,
      statusTransaction: json['status_transaction'] as String,
      totalAmount: (json['total_amount'] as num).toDouble(),
      totalFee: (json['total_fee'] as num).toDouble(),
      userBalance: (json['user_balance'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentMethodItemImplToJson(
        _$PaymentMethodItemImpl instance) =>
    <String, dynamic>{
      'currency_prefix': instance.currencyPrefix,
      'currency_type': instance.currencyType,
      'formatted': instance.formatted,
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'is_active': instance.isActive,
      'min_amount': instance.minAmount,
      'payment_code': instance.paymentCode,
      'payment_group': instance.paymentGroup,
      'payment_name': instance.paymentName,
      'status_transaction': instance.statusTransaction,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
      'user_balance': instance.userBalance,
    };

_$FormattedPaymentMethodNominalImpl
    _$$FormattedPaymentMethodNominalImplFromJson(Map<String, dynamic> json) =>
        _$FormattedPaymentMethodNominalImpl(
          totalFee: json['total_fee'] as String,
          totalPayment: json['total_payment'] as String,
          userBalance: json['user_balance'] as String,
        );

Map<String, dynamic> _$$FormattedPaymentMethodNominalImplToJson(
        _$FormattedPaymentMethodNominalImpl instance) =>
    <String, dynamic>{
      'total_fee': instance.totalFee,
      'total_payment': instance.totalPayment,
      'user_balance': instance.userBalance,
    };
