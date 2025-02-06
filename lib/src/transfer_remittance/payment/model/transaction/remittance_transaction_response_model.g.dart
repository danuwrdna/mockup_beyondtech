// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remittance_transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemittanceTransactionResponseModelImpl
    _$$RemittanceTransactionResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionResponseModelImpl(
          data: RemittanceTransactionData.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String,
          statusCode: json['status_code'] as String,
        );

Map<String, dynamic> _$$RemittanceTransactionResponseModelImplToJson(
        _$RemittanceTransactionResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$RemittanceTransactionDataImpl _$$RemittanceTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RemittanceTransactionDataImpl(
      createdAt: (json['created_at'] as num).toInt(),
      customerPaymentTransfer:
          RemittanceTransactionDataPaymentTransfer.fromJson(
              json['customer_payment_transfer'] as Map<String, dynamic>),
      expectedPayoutDate: (json['expected_payout_date'] as num).toInt(),
      expiredAt: (json['expired_at'] as num).toInt(),
      formatted: RemittanceTransactionDataFormatted.fromJson(
          json['formatted'] as Map<String, dynamic>),
      instructions: RemittanceTransactionDataInstructions.fromJson(
          json['instructions'] as Map<String, dynamic>),
      notes: json['notes'] as String,
      paidAt: (json['paid_at'] as num).toInt(),
      payCode: json['pay_code'] as String,
      paymentCode: json['payment_code'] as String,
      paymentFee: RemittanceTransactionDataPaymentFee.fromJson(
          json['payment_fee'] as Map<String, dynamic>),
      paymentName: json['payment_name'] as String,
      qrContent: json['qr_content'] as String,
      qrImage: json['qr_image'] as String,
      rate: RemittanceTransactionDataRate.fromJson(
          json['rate'] as Map<String, dynamic>),
      recipientPaymentTransfer:
          RemittanceTransactionDataPaymentTransfer.fromJson(
              json['recepient_payment_transfer'] as Map<String, dynamic>),
      refId: json['ref_id'] as String,
      statusTransaction: json['status_transaction'] as String,
      subStatusTransaction: json['sub_status_transaction'] as String,
      totalPayment: RemittanceTransactionDataPaymentFee.fromJson(
          json['total_payment'] as Map<String, dynamic>),
      trxId: json['trx_id'] as String,
      uniqueCode: (json['unique_code'] as num).toInt(),
    );

Map<String, dynamic> _$$RemittanceTransactionDataImplToJson(
        _$RemittanceTransactionDataImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'customer_payment_transfer': instance.customerPaymentTransfer,
      'expected_payout_date': instance.expectedPayoutDate,
      'expired_at': instance.expiredAt,
      'formatted': instance.formatted,
      'instructions': instance.instructions,
      'notes': instance.notes,
      'paid_at': instance.paidAt,
      'pay_code': instance.payCode,
      'payment_code': instance.paymentCode,
      'payment_fee': instance.paymentFee,
      'payment_name': instance.paymentName,
      'qr_content': instance.qrContent,
      'qr_image': instance.qrImage,
      'rate': instance.rate,
      'recepient_payment_transfer': instance.recipientPaymentTransfer,
      'ref_id': instance.refId,
      'status_transaction': instance.statusTransaction,
      'sub_status_transaction': instance.subStatusTransaction,
      'total_payment': instance.totalPayment,
      'trx_id': instance.trxId,
      'unique_code': instance.uniqueCode,
    };

_$RemittanceTransactionDataPaymentTransferImpl
    _$$RemittanceTransactionDataPaymentTransferImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataPaymentTransferImpl(
          countryCode: json['country_code'] as String,
          currencyCode: json['currency_code'] as String,
          customerName: json['customer_name'] as String,
          phoneNumber: json['phone_number'] as String,
          receiveNominal:
              RemittanceTransactionDataPaymentTransferNominal.fromJson(
                  json['receive_nominal'] as Map<String, dynamic>),
          sendNominal: RemittanceTransactionDataPaymentTransferNominal.fromJson(
              json['send_nominal'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$RemittanceTransactionDataPaymentTransferImplToJson(
        _$RemittanceTransactionDataPaymentTransferImpl instance) =>
    <String, dynamic>{
      'country_code': instance.countryCode,
      'currency_code': instance.currencyCode,
      'customer_name': instance.customerName,
      'phone_number': instance.phoneNumber,
      'receive_nominal': instance.receiveNominal,
      'send_nominal': instance.sendNominal,
    };

_$RemittanceTransactionDataPaymentTransferNominalImpl
    _$$RemittanceTransactionDataPaymentTransferNominalImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataPaymentTransferNominalImpl(
          formatted: json['formatted'] == null
              ? null
              : RemittanceTransactionDataPaymentTransferNominalFormatted
                  .fromJson(json['formatted'] as Map<String, dynamic>),
          nominal: (json['nominal'] as num).toInt(),
        );

Map<String, dynamic>
    _$$RemittanceTransactionDataPaymentTransferNominalImplToJson(
            _$RemittanceTransactionDataPaymentTransferNominalImpl instance) =>
        <String, dynamic>{
          'formatted': instance.formatted,
          'nominal': instance.nominal,
        };

_$RemittanceTransactionDataPaymentTransferNominalFormattedImpl
    _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl(
          nominal: json['nominal'] as String,
        );

Map<String, dynamic>
    _$$RemittanceTransactionDataPaymentTransferNominalFormattedImplToJson(
            _$RemittanceTransactionDataPaymentTransferNominalFormattedImpl
                instance) =>
        <String, dynamic>{
          'nominal': instance.nominal,
        };

_$RemittanceTransactionDataFormattedImpl
    _$$RemittanceTransactionDataFormattedImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataFormattedImpl(
          totalFee: json['total_fee'] as String,
          totalPayment: json['total_payment'] as String,
          uniqueCode: json['unique_code'] as String,
        );

Map<String, dynamic> _$$RemittanceTransactionDataFormattedImplToJson(
        _$RemittanceTransactionDataFormattedImpl instance) =>
    <String, dynamic>{
      'total_fee': instance.totalFee,
      'total_payment': instance.totalPayment,
      'unique_code': instance.uniqueCode,
    };

_$RemittanceTransactionDataInstructionsImpl
    _$$RemittanceTransactionDataInstructionsImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataInstructionsImpl(
          steps: json['steps'],
          title: json['title'] as String,
        );

Map<String, dynamic> _$$RemittanceTransactionDataInstructionsImplToJson(
        _$RemittanceTransactionDataInstructionsImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'title': instance.title,
    };

_$RemittanceTransactionDataPaymentFeeImpl
    _$$RemittanceTransactionDataPaymentFeeImplFromJson(
            Map<String, dynamic> json) =>
        _$RemittanceTransactionDataPaymentFeeImpl(
          formatted:
              RemittanceTransactionDataPaymentTransferNominalFormatted.fromJson(
                  json['Formatted'] as Map<String, dynamic>),
          amount: (json['amount'] as num).toInt(),
          currencyPrefix: json['currency_prefix'] as String,
          currencyType: json['currency_type'] as String,
          featureFee: (json['feature_fee'] as num).toInt(),
          isFeatureFree: json['is_feature_free'] as bool,
          isPaymentFree: json['is_payment_free'] as bool,
          paymentChannelFee: (json['payment_channel_fee'] as num).toInt(),
        );

Map<String, dynamic> _$$RemittanceTransactionDataPaymentFeeImplToJson(
        _$RemittanceTransactionDataPaymentFeeImpl instance) =>
    <String, dynamic>{
      'Formatted': instance.formatted,
      'amount': instance.amount,
      'currency_prefix': instance.currencyPrefix,
      'currency_type': instance.currencyType,
      'feature_fee': instance.featureFee,
      'is_feature_free': instance.isFeatureFree,
      'is_payment_free': instance.isPaymentFree,
      'payment_channel_fee': instance.paymentChannelFee,
    };

_$RemittanceTransactionDataRateImpl
    _$$RemittanceTransactionDataRateImplFromJson(Map<String, dynamic> json) =>
        _$RemittanceTransactionDataRateImpl(
          formatted:
              RemittanceTransactionDataPaymentTransferNominalFormatted.fromJson(
                  json['formatted'] as Map<String, dynamic>),
          fxRate: (json['fx_rate'] as num).toInt(),
        );

Map<String, dynamic> _$$RemittanceTransactionDataRateImplToJson(
        _$RemittanceTransactionDataRateImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'fx_rate': instance.fxRate,
    };
