import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/notification/notify_inbox_response_model.dart';
import 'package:bpay_mobile/services/models/notification/notify_info_response_model.dart';

abstract class NotificationServiceInterface {
  Future<ApiResponse<NotifyInfoResponse>> getNotify(
    String token,
    int page,
    int limit,
  );

  Future<ApiResponse<InboxResponse>> getInbox(
      String token, int page, int limit);

}
