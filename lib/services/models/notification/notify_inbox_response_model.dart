import 'package:freezed_annotation/freezed_annotation.dart';

part 'notify_inbox_response_model.freezed.dart';
part 'notify_inbox_response_model.g.dart';

@freezed
class InboxResponse with _$InboxResponse {
  const factory InboxResponse({
    required String statusCode,
    required String message,
    required InboxData data,
  }) = _InboxResponse;

  factory InboxResponse.fromJson(Map<String, dynamic> json) =>
      _$InboxResponseFromJson(json);
}

@freezed
class InboxData with _$InboxData {
  const factory InboxData({
    required String statusCode,
    required String message,
    required List<InboxItem> data,
  }) = _InboxData;

  factory InboxData.fromJson(Map<String, dynamic> json) =>
      _$InboxDataFromJson(json);
}

@freezed
class InboxItem with _$InboxItem {
  const factory InboxItem({
    required String title,
    required String message,
    required String url,
    required String createdAt,
    required String banner,
  }) = _InboxItem;

  factory InboxItem.fromJson(Map<String, dynamic> json) =>
      _$InboxItemFromJson(json);
}
