part of 'remittance_transaction_bloc.dart';

@freezed
class RemittanceTransactionState with _$RemittanceTransactionState {
  const factory RemittanceTransactionState.initial() = _Initial;
  const factory RemittanceTransactionState.loading() = _Loading;
  const factory RemittanceTransactionState.success(RemittanceTransactionResponseModel data) = _Success;
  const factory RemittanceTransactionState.failed(String message) = _Failed;
}
