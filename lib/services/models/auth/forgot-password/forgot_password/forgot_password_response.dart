import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response.freezed.dart';
part 'forgot_password_response.g.dart';

@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const factory ForgotPasswordResponse({
    required ForgotPasswordData data,
    required String message,
    required String statusCode,
  }) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}

@freezed
class ForgotPasswordData with _$ForgotPasswordData {
  const factory ForgotPasswordData({
    @JsonKey(name: 'StatusCode') required String statusCode,
    required String message,
    required TokenData data,
  }) = _ForgotPasswordData;

  factory ForgotPasswordData.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordDataFromJson(json);
}

@freezed
class TokenData with _$TokenData {
  const factory TokenData({
    required String token,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) =>
      _$TokenDataFromJson(json);
}
