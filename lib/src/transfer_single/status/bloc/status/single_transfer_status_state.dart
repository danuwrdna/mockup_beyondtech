part of 'single_transfer_status_bloc.dart';

@freezed
class SingleTransferStatusState with _$SingleTransferStatusState {
  const factory SingleTransferStatusState.initial() = _Initial;
  const factory SingleTransferStatusState.loading() = _Loading;
  const factory SingleTransferStatusState.success(
      HistoryTransferSingleResponseModel data) = _Success;
  const factory SingleTransferStatusState.failed(String message) = _Failed;
  const factory SingleTransferStatusState.getBankTransferTransactionHistorySuccess(
          DetailHistoryTransferSingleResponse data) =
      _GetBankTransferTransactionHistorySuccess;
}
