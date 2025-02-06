import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ppob_transaction_response_model.freezed.dart';

part 'ppob_transaction_response_model.g.dart';

PpobTransactionResponseModel ppobTransactionResponseModelFromJson(String str) =>
    PpobTransactionResponseModel.fromJson(json.decode(str));

String ppobTransactionResponseModelToJson(PpobTransactionResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PpobTransactionResponseModel with _$PpobTransactionResponseModel {
  const factory PpobTransactionResponseModel({
    @JsonKey(name: "data") required PpobTransactionData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PpobTransactionResponseModel;

  factory PpobTransactionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionResponseModelFromJson(json);
}

@freezed
class PpobTransactionData with _$PpobTransactionData {
  const factory PpobTransactionData({
    @JsonKey(name: "created_at") required int createdAt,
    @JsonKey(name: "expired_at") required int expiredAt,
    @JsonKey(name: "feature_fee") required int featureFee,
    @JsonKey(name: "formatted") required PpobTransactionDataFormatted formatted,
    @JsonKey(name: "instruction")
    required PpobTransactionInstruction instruction,
    @JsonKey(name: "is_feature_free") required bool isFeatureFree,
    @JsonKey(name: "is_payment_free") required bool isPaymentFree,
    @JsonKey(name: "paid_at") required int paidAt,
    @JsonKey(name: "payment_channel")
    required PpobTransactionPaymentChannel paymentChannel,
    @JsonKey(name: "payment_fee") required int paymentFee,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "status_transaction") required String statusTransaction,
    @JsonKey(name: "total_fee") required int totalFee,
    @JsonKey(name: "total_payment") required int totalPayment,
    @JsonKey(name: "transaction_id") required String transactionId,
    @JsonKey(name: "unique_code") required int uniqueCode,
  }) = _PpobTransactionData;

  factory PpobTransactionData.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionDataFromJson(json);
}

@freezed
class PpobTransactionDataFormatted with _$PpobTransactionDataFormatted {
  const factory PpobTransactionDataFormatted({
    @JsonKey(name: "feature_fee") required String featureFee,
    @JsonKey(name: "payment_fee") required String paymentFee,
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "total_payment") required String totalPayment,
  }) = _PpobTransactionDataFormatted;

  factory PpobTransactionDataFormatted.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionDataFormattedFromJson(json);
}

@freezed
class PpobTransactionInstruction with _$PpobTransactionInstruction {
  const factory PpobTransactionInstruction({
    @JsonKey(name: "steps") required dynamic steps,
    @JsonKey(name: "title") required String title,
  }) = _PpobTransactionInstruction;

  factory PpobTransactionInstruction.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionInstructionFromJson(json);
}

@freezed
class PpobTransactionPaymentChannel with _$PpobTransactionPaymentChannel {
  const factory PpobTransactionPaymentChannel({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "currency_prefix") required String currencyPrefix,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "fee") required PpobTransactionPaymentChannelFee fee,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "pay_code") required String payCode,
    @JsonKey(name: "qr_content") required String qrContent,
    @JsonKey(name: "qr_image") required String qrImage,
  }) = _PpobTransactionPaymentChannel;

  factory PpobTransactionPaymentChannel.fromJson(Map<String, dynamic> json) =>
      _$PpobTransactionPaymentChannelFromJson(json);
}

@freezed
class PpobTransactionPaymentChannelFee with _$PpobTransactionPaymentChannelFee {
  const factory PpobTransactionPaymentChannelFee({
    @JsonKey(name: "amount") required int amount,
  }) = _PpobTransactionPaymentChannelFee;

  factory PpobTransactionPaymentChannelFee.fromJson(
          Map<String, dynamic> json) =>
      _$PpobTransactionPaymentChannelFeeFromJson(json);
}
