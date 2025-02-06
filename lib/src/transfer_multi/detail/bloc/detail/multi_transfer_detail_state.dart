part of 'multi_transfer_detail_bloc.dart';

@freezed
class MultiTransferDetailState with _$MultiTransferDetailState {
  const factory MultiTransferDetailState.initial() = _Initial;
  const factory MultiTransferDetailState.loading() = _Loading;
  const factory MultiTransferDetailState.success(TransferSingleDetailResponseModel data) = _Success;
  const factory MultiTransferDetailState.failed(String message) = _Failed;
}
