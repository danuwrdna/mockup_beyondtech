part of 'transfer_single_bloc.dart';

@freezed
class TransferSingleState with _$TransferSingleState {
  const factory TransferSingleState.initial() = _Initial;
  const factory TransferSingleState.loading() = _Loading;
  const factory TransferSingleState.success(TransferSingleResponseModel data) = _Success;
  const factory TransferSingleState.failed(String message) = _Failed;
}
