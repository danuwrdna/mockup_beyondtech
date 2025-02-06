import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'remittance_transaction_response_model.freezed.dart';

part 'remittance_transaction_response_model.g.dart';

RemittanceTransactionResponseModel remittanceTransactionResponseModelFromJson(
        String str) =>
    RemittanceTransactionResponseModel.fromJson(json.decode(str));

String remittanceTransactionResponseModelToJson(
        RemittanceTransactionResponseModel data) =>
    json.encode(data.toJson());

@freezed
class RemittanceTransactionResponseModel
    with _$RemittanceTransactionResponseModel {
  const factory RemittanceTransactionResponseModel({
    @JsonKey(name: "data") required RemittanceTransactionData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _RemittanceTransactionResponseModel;

  factory RemittanceTransactionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$RemittanceTransactionResponseModelFromJson(json);
}

@freezed
class RemittanceTransactionData with _$RemittanceTransactionData {
  const factory RemittanceTransactionData({
    @JsonKey(name: "created_at") required int createdAt,
    @JsonKey(name: "customer_payment_transfer")
    required RemittanceTransactionDataPaymentTransfer customerPaymentTransfer,
    @JsonKey(name: "expected_payout_date") required int expectedPayoutDate,
    @JsonKey(name: "expired_at") required int expiredAt,
    @JsonKey(name: "formatted") required RemittanceTransactionDataFormatted formatted,
    @JsonKey(name: "instructions") required RemittanceTransactionDataInstructions instructions,
    @JsonKey(name: "notes") required String notes,
    @JsonKey(name: "paid_at") required int paidAt,
    @JsonKey(name: "pay_code") required String payCode,
    @JsonKey(name: "payment_code") required String paymentCode,
    @JsonKey(name: "payment_fee") required RemittanceTransactionDataPaymentFee paymentFee,
    @JsonKey(name: "payment_name") required String paymentName,
    @JsonKey(name: "qr_content") required String qrContent,
    @JsonKey(name: "qr_image") required String qrImage,
    @JsonKey(name: "rate") required RemittanceTransactionDataRate rate,
    @JsonKey(name: "recepient_payment_transfer")
    required RemittanceTransactionDataPaymentTransfer recipientPaymentTransfer,
    @JsonKey(name: "ref_id") required String refId,
    @JsonKey(name: "status_transaction") required String statusTransaction,
    @JsonKey(name: "sub_status_transaction")
    required String subStatusTransaction,
    @JsonKey(name: "total_payment") required RemittanceTransactionDataPaymentFee totalPayment,
    @JsonKey(name: "trx_id") required String trxId,
    @JsonKey(name: "unique_code") required int uniqueCode,
  }) = _RemittanceTransactionData;

  factory RemittanceTransactionData.fromJson(Map<String, dynamic> json) => _$RemittanceTransactionDataFromJson(json);
}

@freezed
class RemittanceTransactionDataPaymentTransfer with _$RemittanceTransactionDataPaymentTransfer {
  const factory RemittanceTransactionDataPaymentTransfer({
    @JsonKey(name: "country_code") required String countryCode,
    @JsonKey(name: "currency_code") required String currencyCode,
    @JsonKey(name: "customer_name") required String customerName,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "receive_nominal") required RemittanceTransactionDataPaymentTransferNominal receiveNominal,
    @JsonKey(name: "send_nominal") required RemittanceTransactionDataPaymentTransferNominal sendNominal,
  }) = _RemittanceTransactionDataPaymentTransfer;

  factory RemittanceTransactionDataPaymentTransfer.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataPaymentTransferFromJson(json);
}

@freezed
class RemittanceTransactionDataPaymentTransferNominal with _$RemittanceTransactionDataPaymentTransferNominal {
  const factory RemittanceTransactionDataPaymentTransferNominal({
    @JsonKey(name: "formatted") required RemittanceTransactionDataPaymentTransferNominalFormatted? formatted,
    @JsonKey(name: "nominal") required int nominal,
  }) = _RemittanceTransactionDataPaymentTransferNominal;

  factory RemittanceTransactionDataPaymentTransferNominal.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataPaymentTransferNominalFromJson(json);
}

@freezed
class RemittanceTransactionDataPaymentTransferNominalFormatted with _$RemittanceTransactionDataPaymentTransferNominalFormatted {
  const factory RemittanceTransactionDataPaymentTransferNominalFormatted({
    @JsonKey(name: "nominal") required String nominal,
  }) = _RemittanceTransactionDataPaymentTransferNominalFormatted;

  factory RemittanceTransactionDataPaymentTransferNominalFormatted.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataPaymentTransferNominalFormattedFromJson(json);
}

@freezed
class RemittanceTransactionDataFormatted with _$RemittanceTransactionDataFormatted {
  const factory RemittanceTransactionDataFormatted({
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "total_payment") required String totalPayment,
    @JsonKey(name: "unique_code") required String uniqueCode,
  }) = _RemittanceTransactionDataFormatted;

  factory RemittanceTransactionDataFormatted.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataFormattedFromJson(json);
}

@freezed
class RemittanceTransactionDataInstructions with _$RemittanceTransactionDataInstructions {
  const factory RemittanceTransactionDataInstructions({
    @JsonKey(name: "steps") required dynamic steps,
    @JsonKey(name: "title") required String title,
  }) = _RemittanceTransactionDataInstructions;

  factory RemittanceTransactionDataInstructions.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataInstructionsFromJson(json);
}

@freezed
class RemittanceTransactionDataPaymentFee with _$RemittanceTransactionDataPaymentFee {
  const factory RemittanceTransactionDataPaymentFee({
    @JsonKey(name: "Formatted") required RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "currency_prefix") required String currencyPrefix,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "feature_fee") required int featureFee,
    @JsonKey(name: "is_feature_free") required bool isFeatureFree,
    @JsonKey(name: "is_payment_free") required bool isPaymentFree,
    @JsonKey(name: "payment_channel_fee") required int paymentChannelFee,
  }) = _RemittanceTransactionDataPaymentFee;

  factory RemittanceTransactionDataPaymentFee.fromJson(Map<String, dynamic> json) =>
      _$RemittanceTransactionDataPaymentFeeFromJson(json);
}

@freezed
class RemittanceTransactionDataRate with _$RemittanceTransactionDataRate {
  const factory RemittanceTransactionDataRate({
    @JsonKey(name: "formatted") required RemittanceTransactionDataPaymentTransferNominalFormatted formatted,
    @JsonKey(name: "fx_rate") required int fxRate,
  }) = _RemittanceTransactionDataRate;

  factory RemittanceTransactionDataRate.fromJson(Map<String, dynamic> json) => _$RemittanceTransactionDataRateFromJson(json);
}
