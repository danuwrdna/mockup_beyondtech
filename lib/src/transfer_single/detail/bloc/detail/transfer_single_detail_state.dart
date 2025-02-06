part of 'transfer_single_detail_bloc.dart';

@freezed
class TransferSingleDetailState with _$TransferSingleDetailState {
  const factory TransferSingleDetailState.initial() = _Initial;
  const factory TransferSingleDetailState.loading() = _Loading;
  const factory TransferSingleDetailState.success(TransferSingleDetailResponseModel data) = _Success;
  const factory TransferSingleDetailState.failed(String message) = _Failed;
}
