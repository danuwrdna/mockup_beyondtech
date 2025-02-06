import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
import 'package:bpay_mobile/services/models/profile_transaction/save_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/profile_transaction/update_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';

abstract class ProfileTransactionServiceInterface {
  Future<ApiResponse<GetRecipientListResponseModel>> getRecipientList(
    String token,
  );

  Future<ApiResponse<SaveRecipientResponseModel>> saveRecipient(
    String token,
    String bankCode,
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  );

    Future<ApiResponse<SaveRecipientResponseModel>> saveBalanceRecipient(
    String token,
    TransactionType transferType,
    String accountNumber,
    String recipientName,
  );

  Future<ApiResponse<UpdateRecipientResponseModel>> updateRecipient(
    String token,
    String recipientId,
    String saveState,
  );
}
