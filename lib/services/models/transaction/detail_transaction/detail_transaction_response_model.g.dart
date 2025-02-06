// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTransactionResponseModelImpl
    _$$DetailTransactionResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$DetailTransactionResponseModelImpl(
          data: json['data'] == null
              ? null
              : DetailTransactionData.fromJson(
                  json['data'] as Map<String, dynamic>),
          message: json['message'] as String?,
          statusCode: json['status_code'] as String?,
        );

Map<String, dynamic> _$$DetailTransactionResponseModelImplToJson(
        _$DetailTransactionResponseModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status_code': instance.statusCode,
    };

_$DetailTransactionDataImpl _$$DetailTransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTransactionDataImpl(
      boundaryType: json['boundary_type'] as String?,
      createdAt: (json['created_at'] as num?)?.toInt(),
      expiredAt: (json['expired_at'] as num?)?.toInt(),
      formatted: json['formatted'] == null
          ? null
          : Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
      paidAt: (json['paid_at'] as num?)?.toInt(),
      paymentChannel: json['paymentChannel'] == null
          ? null
          : PaymentChannel.fromJson(
              json['paymentChannel'] as Map<String, dynamic>),
      ppobProduct: json['ppobProduct'] == null
          ? null
          : PpobProduct.fromJson(json['ppobProduct'] as Map<String, dynamic>),
      rate: json['rate'] == null
          ? null
          : Rate.fromJson(json['rate'] as Map<String, dynamic>),
      recepients: (json['recepients'] as List<dynamic>?)
          ?.map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusTransaction: json['status_transaction'] as String?,
      subStatusTransaction: json['sub_status_transaction'] as String?,
      totalAmount: (json['total_amount'] as num?)?.toInt(),
      totalFee: json['totalFee'] == null
          ? null
          : TotalFee.fromJson(json['totalFee'] as Map<String, dynamic>),
      transactionId: json['transaction_id'] as String?,
      transactionRefId: json['transaction_ref_id'] as String?,
      transactionTitle: json['transaction_title'] as String?,
      transactionType: json['transaction_type'] as String?,
      uniqueCode: (json['unique_code'] as num?)?.toInt(),
      updatedAt: (json['updated_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DetailTransactionDataImplToJson(
        _$DetailTransactionDataImpl instance) =>
    <String, dynamic>{
      'boundary_type': instance.boundaryType,
      'created_at': instance.createdAt,
      'expired_at': instance.expiredAt,
      'formatted': instance.formatted,
      'paid_at': instance.paidAt,
      'paymentChannel': instance.paymentChannel,
      'ppobProduct': instance.ppobProduct,
      'rate': instance.rate,
      'recepients': instance.recepients,
      'status_transaction': instance.statusTransaction,
      'sub_status_transaction': instance.subStatusTransaction,
      'total_amount': instance.totalAmount,
      'totalFee': instance.totalFee,
      'transaction_id': instance.transactionId,
      'transaction_ref_id': instance.transactionRefId,
      'transaction_title': instance.transactionTitle,
      'transaction_type': instance.transactionType,
      'unique_code': instance.uniqueCode,
      'updated_at': instance.updatedAt,
    };

_$FormattedImpl _$$FormattedImplFromJson(Map<String, dynamic> json) =>
    _$FormattedImpl(
      price: json['price'] as String?,
      totalAmount: json['total_amount'] as String?,
      totalFee: json['total_fee'] as String?,
      uniqueCode: json['unique_code'] as String?,
    );

Map<String, dynamic> _$$FormattedImplToJson(_$FormattedImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'total_amount': instance.totalAmount,
      'total_fee': instance.totalFee,
      'unique_code': instance.uniqueCode,
    };

_$PaymentChannelImpl _$$PaymentChannelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentChannelImpl(
      currencyType: json['currency_type'] as String?,
      method: json['method'] as String?,
      name: json['name'] as String?,
      payCode: json['pay_code'] as String?,
      qrContent: json['qr_content'] as String?,
      qrImage: json['qr_image'] as String?,
    );

Map<String, dynamic> _$$PaymentChannelImplToJson(
        _$PaymentChannelImpl instance) =>
    <String, dynamic>{
      'currency_type': instance.currencyType,
      'method': instance.method,
      'name': instance.name,
      'pay_code': instance.payCode,
      'qr_content': instance.qrContent,
      'qr_image': instance.qrImage,
    };

_$PpobProductImpl _$$PpobProductImplFromJson(Map<String, dynamic> json) =>
    _$PpobProductImpl(
      desc: json['desc'] == null
          ? null
          : PpobProductDesc.fromJson(json['desc'] as Map<String, dynamic>),
      productName: json['product_name'] as String?,
      productNumber: json['product_number'] as String?,
      sellingPrice: (json['selling_price'] as num?)?.toInt(),
      serialNumber: json['serial_number'] as String?,
    );

Map<String, dynamic> _$$PpobProductImplToJson(_$PpobProductImpl instance) =>
    <String, dynamic>{
      'desc': instance.desc,
      'product_name': instance.productName,
      'product_number': instance.productNumber,
      'selling_price': instance.sellingPrice,
      'serial_number': instance.serialNumber,
    };

_$PpobProductDescImpl _$$PpobProductDescImplFromJson(
        Map<String, dynamic> json) =>
    _$PpobProductDescImpl(
      alamat: json['alamat'] as String?,
      biayaAdminStnk: json['biaya_admin_stnk'] as String?,
      biayaAdminTnkb: json['biaya_admin_tnkb'] as String?,
      biayaDendaBbn: json['biaya_denda_bbn'] as String?,
      biayaDendaPkb: json['biaya_denda_pkb'] as String?,
      biayaDendaSwd: json['biaya_denda_swd'] as String?,
      daya: (json['daya'] as num?)?.toInt(),
      detail: json['detail'],
      itemName: json['item_name'] as String?,
    );

Map<String, dynamic> _$$PpobProductDescImplToJson(
        _$PpobProductDescImpl instance) =>
    <String, dynamic>{
      'alamat': instance.alamat,
      'biaya_admin_stnk': instance.biayaAdminStnk,
      'biaya_admin_tnkb': instance.biayaAdminTnkb,
      'biaya_denda_bbn': instance.biayaDendaBbn,
      'biaya_denda_pkb': instance.biayaDendaPkb,
      'biaya_denda_swd': instance.biayaDendaSwd,
      'daya': instance.daya,
      'detail': instance.detail,
      'item_name': instance.itemName,
    };

_$RateImpl _$$RateImplFromJson(Map<String, dynamic> json) => _$RateImpl(
      formatted: json['formatted'] == null
          ? null
          : Formatted.fromJson(json['formatted'] as Map<String, dynamic>),
      fxRate: (json['fx_rate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RateImplToJson(_$RateImpl instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'fx_rate': instance.fxRate,
    };

_$RecipientImpl _$$RecipientImplFromJson(Map<String, dynamic> json) =>
    _$RecipientImpl(
      accountCode: json['account_code'] as String?,
      accountName: json['account_name'] as String?,
      bankCode: json['bank_code'] as String?,
      nominal: (json['nominal'] as num?)?.toInt(),
      currencyType: json['currency_type'] as String?,
      receiveCurrencyType: json['receive_currency_type'] as String?,
      note: json['note'] as String?,
      receiveNominal: (json['receive_nominal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RecipientImplToJson(_$RecipientImpl instance) =>
    <String, dynamic>{
      'account_code': instance.accountCode,
      'account_name': instance.accountName,
      'bank_code': instance.bankCode,
      'nominal': instance.nominal,
      'currency_type': instance.currencyType,
      'receive_currency_type': instance.receiveCurrencyType,
      'note': instance.note,
      'receive_nominal': instance.receiveNominal,
    };

_$TotalFeeImpl _$$TotalFeeImplFromJson(Map<String, dynamic> json) =>
    _$TotalFeeImpl(
      amount: (json['amount'] as num?)?.toInt(),
      isFeatureFree: json['is_feature_free'] as bool?,
      isFree: json['isFree'] as bool?,
      paymentChannelFee: (json['payment_channel_fee'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TotalFeeImplToJson(_$TotalFeeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'is_feature_free': instance.isFeatureFree,
      'isFree': instance.isFree,
      'payment_channel_fee': instance.paymentChannelFee,
    };
