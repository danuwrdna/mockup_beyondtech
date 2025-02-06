import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ppob_package_response_model.freezed.dart';

part 'ppob_package_response_model.g.dart';

PpobPackageResponseModel ppobPackageResponseModelFromJson(String str) =>
    PpobPackageResponseModel.fromJson(json.decode(str));

String ppobPackageResponseModelToJson(PpobPackageResponseModel data) =>
    json.encode(data.toJson());

@freezed
class PpobPackageResponseModel with _$PpobPackageResponseModel {
  const factory PpobPackageResponseModel({
    @JsonKey(name: "data") required List<PpobPackageDataItem> data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "status_code") required String statusCode,
  }) = _PpobPackageResponseModel;

  factory PpobPackageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PpobPackageResponseModelFromJson(json);
}

@freezed
class PpobPackageDataItem with _$PpobPackageDataItem {
  const factory PpobPackageDataItem({
    @JsonKey(name: "denom_list")
    required List<PpobPackageDataItemDenominationList>? denominationList,
    @JsonKey(name: "icon_url") required String iconUrl,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "package_name") required String packageName,
    @JsonKey(name: "package_type") required String packageType,
    @JsonKey(name: "sort") required int sort,
  }) = _PpobPackageDataItem;

  factory PpobPackageDataItem.fromJson(Map<String, dynamic> json) =>
      _$PpobPackageDataItemFromJson(json);
}

@freezed
class PpobPackageDataItemDenominationList
    with _$PpobPackageDataItemDenominationList {
  const factory PpobPackageDataItemDenominationList({
    @JsonKey(name: "formatted")
    required PpobPackageDataItemPriceFormatted formatted,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "omitempty") required String omitEmpty,
    @JsonKey(name: "originalPrice") required int originalPrice,
    @JsonKey(name: "price") required int price,
  }) = _PpobPackageDataItemDenominationList;

  factory PpobPackageDataItemDenominationList.fromJson(
          Map<String, dynamic> json) =>
      _$PpobPackageDataItemDenominationListFromJson(json);
}

@freezed
class PpobPackageDataItemPriceFormatted
    with _$PpobPackageDataItemPriceFormatted {
  const factory PpobPackageDataItemPriceFormatted({
    @JsonKey(name: "price") required String price,
  }) = _PpobPackageDataItemPriceFormatted;

  factory PpobPackageDataItemPriceFormatted.fromJson(
          Map<String, dynamic> json) =>
      _$PpobPackageDataItemPriceFormattedFromJson(json);
}
