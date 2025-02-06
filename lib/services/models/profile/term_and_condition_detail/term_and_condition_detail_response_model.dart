import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'term_and_condition_detail_response_model.freezed.dart';
part 'term_and_condition_detail_response_model.g.dart';

TermAndConditionDetailResponseModel termAndConditionDetailResponseModelFromJson(String str) => TermAndConditionDetailResponseModel.fromJson(json.decode(str));

String termAndConditionDetailResponseModelToJson(TermAndConditionDetailResponseModel data) => json.encode(data.toJson());

@freezed
class TermAndConditionDetailResponseModel with _$TermAndConditionDetailResponseModel {
  const factory TermAndConditionDetailResponseModel({
    @JsonKey(name: "data")
    required TermAndConditionDetailResponseData data,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "statusCode")
    required String statusCode,
  }) = _TermAndConditionDetailResponseModel;

  factory TermAndConditionDetailResponseModel.fromJson(Map<String, dynamic> json) => _$TermAndConditionDetailResponseModelFromJson(json);
}

@freezed
class TermAndConditionDetailResponseData with _$TermAndConditionDetailResponseData {
  const factory TermAndConditionDetailResponseData({
    @JsonKey(name: "statusCode")
    required String statusCode,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required TermAndConditionDetailData data,
  }) = _TermAndConditionDetailResponseData;

  factory TermAndConditionDetailResponseData.fromJson(Map<String, dynamic> json) => _$TermAndConditionDetailResponseDataFromJson(json);
}

@freezed
class TermAndConditionDetailData with _$TermAndConditionDetailData {
  const factory TermAndConditionDetailData({
    @JsonKey(name: "category")
    required String category,
    @JsonKey(name: "title")
    required String title,
    @JsonKey(name: "banner")
    required String banner,
    @JsonKey(name: "message")
    required String message,
  }) = _TermAndConditionDetailData;

  factory TermAndConditionDetailData.fromJson(Map<String, dynamic> json) => _$TermAndConditionDetailDataFromJson(json);
}
