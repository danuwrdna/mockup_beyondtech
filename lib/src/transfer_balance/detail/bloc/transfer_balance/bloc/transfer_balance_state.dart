part of 'transfer_balance_bloc.dart';

@freezed
class TransferBalanceState with _$TransferBalanceState {
  const factory TransferBalanceState.initial() = _Initial;
  const factory TransferBalanceState.loading() = _Loading;
  const factory TransferBalanceState.success(TransferBalanceResponseModel data) = _Success;
  const factory TransferBalanceState.failed(String message) = _Failed;
}
