import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'change_profile_picture_response_model.freezed.dart';

part 'change_profile_picture_response_model.g.dart';

ChangeProfilePictureResponseModel changeProfilePictureResponseModelFromJson(
        String str) =>
    ChangeProfilePictureResponseModel.fromJson(json.decode(str));

String changeProfilePictureResponseModelToJson(
        ChangeProfilePictureResponseModel data) =>
    json.encode(data.toJson());

@freezed
class ChangeProfilePictureResponseModel
    with _$ChangeProfilePictureResponseModel {
  const factory ChangeProfilePictureResponseModel({
    @JsonKey(name: "data") required ChangeProfilePictureResponseData data,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "statusCode") required String statusCode,
  }) = _ChangeProfilePictureResponseModel;

  factory ChangeProfilePictureResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ChangeProfilePictureResponseModelFromJson(json);
}

@freezed
class ChangeProfilePictureResponseData with _$ChangeProfilePictureResponseData {
  const factory ChangeProfilePictureResponseData({
    @JsonKey(name: "statusCode") required String statusCode,
    @JsonKey(name: "message") required String message,
  }) = _ChangeProfilePictureResponseData;

  factory ChangeProfilePictureResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$ChangeProfilePictureResponseDataFromJson(json);
}
