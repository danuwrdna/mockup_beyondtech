import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'payment_method_list_response_model.freezed.dart';

part 'payment_method_list_response_model.g.dart';

PaymentMethodListResponseModel paymentMethodListResponseModelFromJson(
        String str) =>
    PaymentMethodListResponseModel.fromJson(json.decode(str));

String paymentMethodListResponseModelToJson(
        PaymentMethodListResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PaymentMethodListResponseModel with _$PaymentMethodListResponseModel {
  const factory PaymentMethodListResponseModel({
    @JsonKey(name: "data") required List<PaymentMethodItem> data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PaymentMethodListResponseModel;

  factory PaymentMethodListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodListResponseModelFromJson(json);
}

@freezed
class PaymentMethodItem with _$PaymentMethodItem {
  const factory PaymentMethodItem({
    @JsonKey(name: "currency_prefix") required String currencyPrefix,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "formatted")
    required FormattedPaymentMethodNominal formatted,
    @JsonKey(name: "icon_url") required String iconUrl,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "min_amount") required int minAmount,
    @JsonKey(name: "payment_code") required String paymentCode,
    @JsonKey(name: "payment_group") required String paymentGroup,
    @JsonKey(name: "payment_name") required String paymentName,
    @JsonKey(name: "status_transaction") required String statusTransaction,
    @JsonKey(name: "total_amount") required double totalAmount,
    @JsonKey(name: "total_fee") required double totalFee,
    @JsonKey(name: "user_balance") required int userBalance,
  }) = _PaymentMethodItem;

  factory PaymentMethodItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodItemFromJson(json);
}

@freezed
class FormattedPaymentMethodNominal with _$FormattedPaymentMethodNominal {
  const factory FormattedPaymentMethodNominal({
    @JsonKey(name: "total_fee") required String totalFee,
    @JsonKey(name: "total_payment") required String totalPayment,
    @JsonKey(name: "user_balance") required String userBalance,
  }) = _FormattedPaymentMethodNominal;

  factory FormattedPaymentMethodNominal.fromJson(Map<String, dynamic> json) =>
      _$FormattedPaymentMethodNominalFromJson(json);
}
