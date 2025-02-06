// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ppob_transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PpobTransactionResponseModelImpl _$$PpobTransactionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobTransactionResponseModelImpl(
      data: PpobTransactionData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      statusCode: json['status_code'] as String,
    );

Map<String, dynamic> _$$PpobTransactionResponseModelImplToJson(
        _$PpobTransactionResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$PpobTransactionDataImpl _$$PpobTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobTransactionDataImpl(
      createdAt: (json['created_at'] as num).toInt(),
      expiredAt: (json['expired_at'] as num).toInt(),
      featureFee: (json['feature_fee'] as num).toInt(),
      formatted: PpobTransactionDataFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      instruction: PpobTransactionInstruction.fromJson(
          json['instruction'] as Map<String, dynamic>),
      isFeatureFree: json['is_feature_free'] as bool,
      isPaymentFree: json['is_payment_free'] as bool,
      paidAt: (json['paid_at'] as num).toInt(),
      paymentChannel: PpobTransactionPaymentChannel.fromJson(
          json['payment_channel'] as Map<String, dynamic>),
      paymentFee: (json['payment_fee'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      statusTransaction: json['status_transaction'] as String,
      totalFee: (json['total_fee'] as num).toInt(),
      totalPayment: (json['total_payment'] as num).toInt(),
      transactionId: json['transaction_id'] as String,
      uniqueCode: (json['unique_code'] as num).toInt(),
    );

Map<String, dynamic> _$$PpobTransactionDataImplToJson(
        _$PpobTransactionDataImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'expired_at': instance.expiredAt,
      'feature_fee': instance.featureFee,
      'formatted': instance.formatted,
      'instruction': instance.instruction,
      'is_feature_free': instance.isFeatureFree,
      'is_payment_free': instance.isPaymentFree,
      'paid_at': instance.paidAt,
      'payment_channel': instance.paymentChannel,
      'payment_fee': instance.paymentFee,
      'price': instance.price,
      'status_transaction': instance.statusTransaction,
      'total_fee': instance.totalFee,
      'total_payment': instance.totalPayment,
      'transaction_id': instance.transactionId,
      'unique_code': instance.uniqueCode,
    };

_$PpobTransactionDataFormattedImpl _$$PpobTransactionDataFormattedImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobTransactionDataFormattedImpl(
      featureFee: json['feature_fee'] as String,
      paymentFee: json['payment_fee'] as String,
      price: json['price'] as String,
      totalFee: json['total_fee'] as String,
      totalPayment: json['total_payment'] as String,
    );

Map<String, dynamic> _$$PpobTransactionDataFormattedImplToJson(
        _$PpobTransactionDataFormattedImpl instance) =>
    <String, dynamic>{
      'feature_fee': instance.featureFee,
      'payment_fee': instance.paymentFee,
      'price': instance.price,
      'total_fee': instance.totalFee,
      'total_payment': instance.totalPayment,
    };

_$PpobTransactionInstructionImpl _$$PpobTransactionInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobTransactionInstructionImpl(
      steps: json['steps'],
      title: json['title'] as String,
    );

Map<String, dynamic> _$$PpobTransactionInstructionImplToJson(
        _$PpobTransactionInstructionImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'title': instance.title,
    };

_$PpobTransactionPaymentChannelImpl
    _$$PpobTransactionPaymentChannelImplFromJson(Map<String, dynamic> json) =>
        _$PpobTransactionPaymentChannelImpl(
          code: json['code'] as String,
          currencyPrefix: json['currency_prefix'] as String,
          currencyType: json['currency_type'] as String,
          fee: PpobTransactionPaymentChannelFee.fromJson(
              json['fee'] as Map<String, dynamic>),
          name: json['name'] as String,
          payCode: json['pay_code'] as String,
          qrContent: json['qr_content'] as String,
          qrImage: json['qr_image'] as String,
        );

Map<String, dynamic> _$$PpobTransactionPaymentChannelImplToJson(
        _$PpobTransactionPaymentChannelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'currency_prefix': instance.currencyPrefix,
      'currency_type': instance.currencyType,
      'fee': instance.fee,
      'name': instance.name,
      'pay_code': instance.payCode,
      'qr_content': instance.qrContent,
      'qr_image': instance.qrImage,
    };

_$PpobTransactionPaymentChannelFeeImpl
    _$$PpobTransactionPaymentChannelFeeImplFromJson(
            Map<String, dynamic> json) =>
        _$PpobTransactionPaymentChannelFeeImpl(
          amount: (json['amount'] as num).toInt(),
        );

Map<String, dynamic> _$$PpobTransactionPaymentChannelFeeImplToJson(
        _$PpobTransactionPaymentChannelFeeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };
