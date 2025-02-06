import 'package:bpay_mobile/services/models/api_response.dart';
import 'package:bpay_mobile/services/models/transaction/detail_transaction/detail_transaction_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/src/balance_top_up/models/balance_top_up_response_model.dart';
import 'package:bpay_mobile/src/balance_top_up/models/transaction_checkout_response_model.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';

abstract class TransactionServiceInterface {
  Future<ApiResponse<PaymentMethodListResponseModel>> getPaymentMethodList(
    String token,
    int nominal,
  );

  Future<ApiResponse<BalanceTopUpResponseModel>> getBalanceTopUp(
    String token,
    int nominal,
    String paymentMethodCode,
  );

  Future<ApiResponse<TransactionCheckoutResponseModel>> getTransactionCheckout(
    String token,
    String paymentChannelCode,
    TransactionType transactionType,
    int nominal,
  );

  Future<ApiResponse<PpobCheckoutResponseModel>> getPpobDetail(
    String token,
    String paymentChannelCode,
    TransactionType transactionType,
    int nominal,
  );

  Future<ApiResponse<PpobTransactionDetailResponseModel>>
      getPpobTransactionDetail(
    String token,
    String transactionId,
    HistoryBoundaryType boundaryType,
    int lastDate,
  );

  Future<ApiResponse<DetailTransactionResponseModel>> getTransactionDetail(
    String token,
    String transactionId,
    String boundaryType,
    int createdAt
  );
}
