part of 'phone_postpaid_transaction_bloc.dart';

@freezed
class PhonePostpaidTransactionState with _$PhonePostpaidTransactionState {
  const factory PhonePostpaidTransactionState.initial() = _Initial;
  const factory PhonePostpaidTransactionState.loading() = _Loading;
  const factory PhonePostpaidTransactionState.transactionPhonePostpaidSuccess(PpobTransactionResponseModel data) = _TransactionPhonePostpaidSuccess;
  const factory PhonePostpaidTransactionState.failed(String message) = _Failed;
}
