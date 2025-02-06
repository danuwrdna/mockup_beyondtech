import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ppob_product_response_model.freezed.dart';

part 'ppob_product_response_model.g.dart';

PpobProductResponseModel ppobProductResponseModelFromJson(String str) =>
    PpobProductResponseModel.fromJson(json.decode(str));

String ppobProductResponseModelToJson(PpobProductResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PpobProductResponseModel with _$PpobProductResponseModel {
  const factory PpobProductResponseModel({
    @JsonKey(name: "data") required List<PpobProductDataItem> data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PpobProductResponseModel;

  factory PpobProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PpobProductResponseModelFromJson(json);
}

@freezed
class PpobProductDataItem with _$PpobProductDataItem {
  const factory PpobProductDataItem({
    @JsonKey(name: "icon_url") required String iconUrl,
    @JsonKey(name: "input_field_name") required String inputFieldName,
    @JsonKey(name: "product_id") required String productId,
    @JsonKey(name: "product_name") required String productName,
    @JsonKey(name: "sort") required int sort,
  }) = _PpobProductDataItem;

  factory PpobProductDataItem.fromJson(Map<String, dynamic> json) =>
      _$PpobProductDataItemFromJson(json);
}
