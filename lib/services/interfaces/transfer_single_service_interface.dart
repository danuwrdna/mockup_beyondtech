import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/models/transfer_balance_models.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/model/remittance_transaction_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/status/model/detail_history_transfer_single_response_model.dart';

abstract class TransferSingleServiceInterface {
  Future<ApiResponse<HistoryTransferSingleResponseModel>>
      getSingleTransferHistory(
    String token,
    HistoryBoundaryType boundaryType,
    TransactionStatus? transactionStatus,
    int fromDate,
  );

  Future<ApiResponse<DestinationBankListResponseModel>> getBankList(
    String token,
  );

  Future<ApiResponse<VerifyRecipientResponseModel>> verifyRecipient(
    String token,
    String bankCode,
    String accountNumber,
    TransactionType featureCode,
  );

  Future<ApiResponse<VerifyRecipientResponseModel>> verifySendBalanceRecipient(
    String token,
    String accountNumber,
    TransactionType featureCode,
  );

  Future<ApiResponse<TransferSingleDetailResponseModel>>
      getSingleTransferDetail(
    String token,
    String paymentCode,
    TransactionType transactionType,
    RecipientPayloadItemModel recipientPayload,
  );

  Future<ApiResponse<TransferSingleResponseModel>> transferSingleBankAccount(
    String token,
    String paymentCode,
    String? pin,
    RecipientPayloadItemModel destinationPayload,
    String isBiometricValid
  );

  Future<ApiResponse<TransferSingleDetailResponseModel>> getMultiTransferDetail(
    String token,
    String paymentCode,
    TransactionType transactionType,
    List<RecipientPayloadItemModel> recipients,
  );

  Future<ApiResponse<TransferSingleResponseModel>> transferMultiBankAccount(
    String token,
    String paymentCode,
    String? pin,
    List<RecipientPayloadItemModel> destinations,
    String isBiometricValid,
  );

  Future<ApiResponse<TransferBalanceResponseModel>> transferBeyond(
    String token,
    int nominal,
    String pin,
    String notes,
    String recipientPhoneNumber,
    String isBiometricValid
  );

  Future<ApiResponse<HistoryTransferSingleResponseModel>>
      getBankTransferTransactionStatus(
    String token,
    String refId,
  );

  Future<ApiResponse<DetailHistoryTransferSingleResponse>>
      getBankTransferTransactionHistory(
    String token,
    String transactionId,
    int lastDate,
  );

  Future<ApiResponse<HistoryTransferSingleResponseModel>> getHistoryTransaction(
    String token,
    HistoryBoundaryType? boundaryType,
    int limit,
  );

  Future<ApiResponse<RemittanceTransactionDetailResponseModel>>
      getRemittanceTransactionDetail(
    String token,
    String transactionId,
    HistoryBoundaryType boundaryType,
    int lastDate,
  );
}
