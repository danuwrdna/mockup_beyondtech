part of 'detail_transfer_balance_bloc.dart';

@freezed
class DetailTransferBalanceState with _$DetailTransferBalanceState {
  const factory DetailTransferBalanceState.initial() = _Initial;
  const factory DetailTransferBalanceState.loading() = _Loading;
  const factory DetailTransferBalanceState.success(TransferSingleDetailResponseModel data) = _Success;
  const factory DetailTransferBalanceState.failed(String message) = _Failed;
}
