part of 'transfer_multi_bloc.dart';

@freezed
class TransferMultiState with _$TransferMultiState {
  const factory TransferMultiState.initial() = _Initial;
  const factory TransferMultiState.loading() = _Loading;
  const factory TransferMultiState.success(TransferSingleResponseModel data) = _Success;
  const factory TransferMultiState.failed(String message) = _Failed;
}
