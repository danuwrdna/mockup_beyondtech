import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/models/bcare_get_message_model.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_post_message/models/bcare_post_message_model.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_help_center/models/bcare_session_model.dart';

abstract class BcareServiceInterface {
  Future<ApiResponse<BcareSessionResponseModel>> getSession(
    String token,
  );

  Future<ApiResponse<BcareGetMessageResponseModel>> getMessage(
    String token,
  );

  Future<ApiResponse<BcarePostMessageResponseModel>> sendMessage(
    String token,
    String message,
  );
}
