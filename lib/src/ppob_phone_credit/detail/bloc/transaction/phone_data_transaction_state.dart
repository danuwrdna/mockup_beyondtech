part of 'phone_data_transaction_bloc.dart';

@freezed
class PhoneDataTransactionState with _$PhoneDataTransactionState {
  const factory PhoneDataTransactionState.initial() = _Initial;
  const factory PhoneDataTransactionState.loading() = _Loading;
  const factory PhoneDataTransactionState.success(PpobTransactionResponseModel data) = _Success;
  const factory PhoneDataTransactionState.failed(String message) = _Failed;
}
