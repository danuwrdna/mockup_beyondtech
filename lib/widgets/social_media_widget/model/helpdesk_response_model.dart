import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'helpdesk_response_model.freezed.dart';

part 'helpdesk_response_model.g.dart';

HelpdeskResponseModel helpdeskResponseModelFromJson(String str) =>
    HelpdeskResponseModel.fromJson(json.decode(str));

String helpdeskResponseModelToJson(HelpdeskResponseModel data) =>
    json.encode(data.toJson());

@freezed
class HelpdeskResponseModel with _$HelpdeskResponseModel {
  const factory HelpdeskResponseModel({
    @JsonKey(name: "data") required HelpdeskResponseData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "statusCode") required String statusCode,
  }) = _HelpdeskResponseModel;

  factory HelpdeskResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HelpdeskResponseModelFromJson(json);
}

@freezed
class HelpdeskResponseData with _$HelpdeskResponseData {
  const factory HelpdeskResponseData({
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<HelpdeskDataItem> data,
  }) = _HelpdeskResponseData;

  factory HelpdeskResponseData.fromJson(Map<String, dynamic> json) =>
      _$HelpdeskResponseDataFromJson(json);
}

@freezed
class HelpdeskDataItem with _$HelpdeskDataItem {
  const factory HelpdeskDataItem({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "value") required String value,
    @JsonKey(name: "link") required String link,
  }) = _HelpdeskDataItem;

  factory HelpdeskDataItem.fromJson(Map<String, dynamic> json) =>
      _$HelpdeskDataItemFromJson(json);
}
