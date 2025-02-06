part of 'multi_transfer_status_bloc.dart';

@freezed
class MultiTransferStatusState with _$MultiTransferStatusState {
  const factory MultiTransferStatusState.initial() = _Initial;
  const factory MultiTransferStatusState.loading() = _Loading;
  const factory MultiTransferStatusState.success(HistoryTransferSingleResponseModel data) = _Success;
  const factory MultiTransferStatusState.failed(String message) = _Failed;
}
