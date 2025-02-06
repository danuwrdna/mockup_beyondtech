import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_reset_validation_response.freezed.dart';
part 'token_reset_validation_response.g.dart';

@freezed
class TokenResetValidationResponse with _$TokenResetValidationResponse {
  const factory TokenResetValidationResponse({
    @JsonKey(name: 'data') required TokenResetValidationData data,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'statusCode') required String statusCode,
  }) = _TokenResetValidationResponse;

  factory TokenResetValidationResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResetValidationResponseFromJson(json);
}

@freezed
class TokenResetValidationData with _$TokenResetValidationData {
  const factory TokenResetValidationData({
    @JsonKey(name: 'StatusCode') required String statusCode,
    @JsonKey(name: 'message') required String message,
  }) = _TokenResetValidationData;

  factory TokenResetValidationData.fromJson(Map<String, dynamic> json) =>
      _$TokenResetValidationDataFromJson(json);
}
