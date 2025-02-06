import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_transaction_response_model.freezed.dart';
part 'detail_transaction_response_model.g.dart';

@freezed
class DetailTransactionResponseModel with _$DetailTransactionResponseModel {
  const factory DetailTransactionResponseModel({
    required DetailTransactionData? data,
    required String? message,
    @JsonKey(name: 'status_code') required String? statusCode,
  }) = _DetailTransactionResponseModel;

  factory DetailTransactionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DetailTransactionResponseModelFromJson(json);
}

@freezed
class DetailTransactionData with _$DetailTransactionData {
  const factory DetailTransactionData({
    @JsonKey(name: 'boundary_type') required String? boundaryType,
    @JsonKey(name: 'created_at') required int? createdAt,
    @JsonKey(name: 'expired_at') required int? expiredAt,
    required Formatted? formatted,
    @JsonKey(name: 'paid_at') required int? paidAt,
    required PaymentChannel? paymentChannel,
    required PpobProduct? ppobProduct,
    required Rate? rate,
    required List<Recipient>? recepients,
    @JsonKey(name: 'status_transaction') required String? statusTransaction,
    @JsonKey(name: 'sub_status_transaction')
    required String? subStatusTransaction,
    @JsonKey(name: 'total_amount') required int? totalAmount,
    required TotalFee? totalFee,
    @JsonKey(name: 'transaction_id') required String? transactionId,
    @JsonKey(name: 'transaction_ref_id') required String? transactionRefId,
    @JsonKey(name: 'transaction_title') required String? transactionTitle,
    @JsonKey(name: 'transaction_type') required String? transactionType,
    @JsonKey(name: 'unique_code') required int? uniqueCode,
    @JsonKey(name: 'updated_at') required int? updatedAt,
  }) = _DetailTransactionData;

  factory DetailTransactionData.fromJson(Map<String, dynamic> json) =>
      _$DetailTransactionDataFromJson(json);
}

@freezed
class Formatted with _$Formatted {
  const factory Formatted({
    required String? price,
    @JsonKey(name: 'total_amount') required String? totalAmount,
    @JsonKey(name: 'total_fee') required String? totalFee,
    @JsonKey(name: 'unique_code') required String? uniqueCode,
  }) = _Formatted;

  factory Formatted.fromJson(Map<String, dynamic> json) =>
      _$FormattedFromJson(json);
}

@freezed
class PaymentChannel with _$PaymentChannel {
  const factory PaymentChannel({
    @JsonKey(name: 'currency_type') required String? currencyType,
    required String? method,
    required String? name,
    @JsonKey(name: 'pay_code') required String? payCode,
    @JsonKey(name: 'qr_content') required String? qrContent,
    @JsonKey(name: 'qr_image') required String? qrImage,
  }) = _PaymentChannel;

  factory PaymentChannel.fromJson(Map<String, dynamic> json) =>
      _$PaymentChannelFromJson(json);
}

@freezed
class PpobProduct with _$PpobProduct {
  const factory PpobProduct({
    required PpobProductDesc? desc,
    @JsonKey(name: 'product_name') required String? productName,
    @JsonKey(name: 'product_number') required String? productNumber,
    @JsonKey(name: 'selling_price') required int? sellingPrice,
    @JsonKey(name: 'serial_number') required String? serialNumber,
  }) = _PpobProduct;

  factory PpobProduct.fromJson(Map<String, dynamic> json) =>
      _$PpobProductFromJson(json);
}

@freezed
class PpobProductDesc with _$PpobProductDesc {
  const factory PpobProductDesc({
    required String? alamat,
    @JsonKey(name: 'biaya_admin_stnk') required String? biayaAdminStnk,
    @JsonKey(name: 'biaya_admin_tnkb') required String? biayaAdminTnkb,
    @JsonKey(name: 'biaya_denda_bbn') required String? biayaDendaBbn,
    @JsonKey(name: 'biaya_denda_pkb') required String? biayaDendaPkb,
    @JsonKey(name: 'biaya_denda_swd') required String? biayaDendaSwd,
    required int? daya,
    dynamic? detail,
    @JsonKey(name: 'item_name') required String? itemName,
  }) = _PpobProductDesc;

  factory PpobProductDesc.fromJson(Map<String, dynamic> json) =>
      _$PpobProductDescFromJson(json);
}

@freezed
class Rate with _$Rate {
  const factory Rate({
    required Formatted? formatted,
    @JsonKey(name: 'fx_rate') required int? fxRate,
  }) = _Rate;

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
}

@freezed
class Recipient with _$Recipient {
  const factory Recipient({
    @JsonKey(name: 'account_code') required String? accountCode,
    @JsonKey(name: 'account_name') required String? accountName,
    @JsonKey(name: 'bank_code') required String? bankCode,
    required int? nominal,
    @JsonKey(name: 'currency_type') required String? currencyType,
    @JsonKey(name: 'receive_currency_type')
    required String? receiveCurrencyType,
    @JsonKey(name: 'note') required String? note,
    @JsonKey(name: 'receive_nominal')
    required int? receiveNominal,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> json) =>
      _$RecipientFromJson(json);
}

@freezed
class TotalFee with _$TotalFee {
  const factory TotalFee({
    required int? amount,
    @JsonKey(name: 'is_feature_free') required bool? isFeatureFree,
    required bool? isFree,
    @JsonKey(name: 'payment_channel_fee') required int? paymentChannelFee,
  }) = _TotalFee;

  factory TotalFee.fromJson(Map<String, dynamic> json) =>
      _$TotalFeeFromJson(json);
}
