import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'term_and_condition_response_model.freezed.dart';

part 'term_and_condition_response_model.g.dart';

TermAndConditionResponseModel termAndConditionResponseModelFromJson(
        String str) =>
    TermAndConditionResponseModel.fromJson(json.decode(str));

String termAndConditionResponseModelToJson(
        TermAndConditionResponseModel data) =>
    json.encode(data.toJson());

@freezed
class TermAndConditionResponseModel with _$TermAndConditionResponseModel {
  const factory TermAndConditionResponseModel({
    @JsonKey(name: "data") required TermAndConditionResponseData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "statusCode") required String statusCode,
  }) = _TermAndConditionResponseModel;

  factory TermAndConditionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TermAndConditionResponseModelFromJson(json);
}

@freezed
class TermAndConditionResponseData with _$TermAndConditionResponseData {
  const factory TermAndConditionResponseData({
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<TermAndConditionData> data,
  }) = _TermAndConditionResponseData;

  factory TermAndConditionResponseData.fromJson(Map<String, dynamic> json) =>
      _$TermAndConditionResponseDataFromJson(json);
}

@freezed
class TermAndConditionData with _$TermAndConditionData {
  const factory TermAndConditionData({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "banner") required String? banner,
  }) = _TermAndConditionData;

  factory TermAndConditionData.fromJson(Map<String, dynamic> json) =>
      _$TermAndConditionDataFromJson(json);
}
