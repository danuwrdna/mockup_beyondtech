import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ppob_checkout_response_model.freezed.dart';

part 'ppob_checkout_response_model.g.dart';

PpobCheckoutResponseModel ppobCheckoutResponseModelFromJson(String str) =>
    PpobCheckoutResponseModel.fromJson(json.decode(str));

String ppobCheckoutResponseModelToJson(PpobCheckoutResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PpobCheckoutResponseModel with _$PpobCheckoutResponseModel {
  const factory PpobCheckoutResponseModel({
    @JsonKey(name: "data") required PpobCheckoutResponseData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PpobCheckoutResponseModel;

  factory PpobCheckoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PpobCheckoutResponseModelFromJson(json);
}

@freezed
class PpobCheckoutResponseData with _$PpobCheckoutResponseData {
  const factory PpobCheckoutResponseData({
    @JsonKey(name: "formatted") required PpobCheckoutDataFormatted formatted,
    @JsonKey(name: "nominal") required int nominal,
    @JsonKey(name: "payment_method")
    required PpobCheckoutDataPaymentMethod paymentMethod,
    @JsonKey(name: "recepients") required dynamic recepients,
    @JsonKey(name: "total_amount") required int totalAmount,
    @JsonKey(name: "total_fee") required int totalFee,
  }) = _PpobCheckoutResponseData;

  factory PpobCheckoutResponseData.fromJson(Map<String, dynamic> json) =>
      _$PpobCheckoutResponseDataFromJson(json);
}

@freezed
class PpobCheckoutDataFormatted with _$PpobCheckoutDataFormatted {
  const factory PpobCheckoutDataFormatted({
    @JsonKey(name: "price") required String price,
    @JsonKey(name: "total_amount") required String totalAmount,
    @JsonKey(name: "total_fee") required String totalFee,
  }) = _PpobCheckoutDataFormatted;

  factory PpobCheckoutDataFormatted.fromJson(Map<String, dynamic> json) =>
      _$PpobCheckoutDataFormattedFromJson(json);
}

@freezed
class PpobCheckoutDataPaymentMethod with _$PpobCheckoutDataPaymentMethod {
  const factory PpobCheckoutDataPaymentMethod({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "fee") required Fee fee,
    @JsonKey(name: "formatted")
    required PpobCheckoutDataPaymentMethodFormatted formatted,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "pay_code") required String payCode,
    @JsonKey(name: "qr_content") required String qrContent,
    @JsonKey(name: "qr_image") required String qrImage,
  }) = _PpobCheckoutDataPaymentMethod;

  factory PpobCheckoutDataPaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PpobCheckoutDataPaymentMethodFromJson(json);
}

@freezed
class Fee with _$Fee {
  const factory Fee({
    @JsonKey(name: "Formatted") required dynamic formatted,
    @JsonKey(name: "amount") required int amount,
    @JsonKey(name: "currency_prefix") required String currencyPrefix,
    @JsonKey(name: "currency_type") required String currencyType,
    @JsonKey(name: "feature_fee") required int featureFee,
    @JsonKey(name: "is_feature_free") required bool isFeatureFree,
    @JsonKey(name: "is_payment_free") required bool isPaymentFree,
    @JsonKey(name: "payment_channel_fee") required int paymentChannelFee,
  }) = _Fee;

  factory Fee.fromJson(Map<String, dynamic> json) => _$FeeFromJson(json);
}

@freezed
class PpobCheckoutDataPaymentMethodFormatted
    with _$PpobCheckoutDataPaymentMethodFormatted {
  const factory PpobCheckoutDataPaymentMethodFormatted({
    @JsonKey(name: "price") required String price,
  }) = _PpobCheckoutDataPaymentMethodFormatted;

  factory PpobCheckoutDataPaymentMethodFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$PpobCheckoutDataPaymentMethodFormattedFromJson(json);
}
