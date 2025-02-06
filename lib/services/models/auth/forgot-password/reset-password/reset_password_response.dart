import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_response.freezed.dart';
part 'reset_password_response.g.dart';

@freezed
class ResetPasswordResponse with _$ResetPasswordResponse {
  const factory ResetPasswordResponse({
    @JsonKey(name: 'data') required ResetPasswordData data,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'statusCode') required String statusCode,
  }) = _ResetPasswordResponse;

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}

@freezed
class ResetPasswordData with _$ResetPasswordData {
  const factory ResetPasswordData({
    @JsonKey(name: 'StatusCode') required String statusCode,
    @JsonKey(name: 'message') required String message,
  }) = _ResetPasswordData;

  factory ResetPasswordData.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordDataFromJson(json);
}
