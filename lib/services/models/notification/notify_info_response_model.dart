import 'package:freezed_annotation/freezed_annotation.dart';

part 'notify_info_response_model.freezed.dart';
part 'notify_info_response_model.g.dart';

@freezed
class NotifyInfoResponse with _$NotifyInfoResponse {
  const factory NotifyInfoResponse({
    required String statusCode,
    required String message,
    required NotifyInfoData data,
  }) = _NotifyInfoResponse;

  factory NotifyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$NotifyInfoResponseFromJson(json);
}

@freezed
class NotifyInfoData with _$NotifyInfoData {
  const factory NotifyInfoData({
    required String statusCode,
    required String message,
    required List<NotificationData> data,
  }) = _NotifyInfoData;

  factory NotifyInfoData.fromJson(Map<String, dynamic> json) =>
      _$NotifyInfoDataFromJson(json);
}

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    required String title,
    required String phoneNumber,
    required String message,
    required String createdAt,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
