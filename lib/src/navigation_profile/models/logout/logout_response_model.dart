import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_response_model.freezed.dart';
part 'logout_response_model.g.dart';

@freezed
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    required Data data,
    required String message,
    required String statusCode,
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required RespStatus respStatus,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class RespStatus with _$RespStatus {
  const factory RespStatus({
    required String StatusCode,
    required String message,
  }) = _RespStatus;

  factory RespStatus.fromJson(Map<String, dynamic> json) =>
      _$RespStatusFromJson(json);
}
