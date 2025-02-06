part of 'transfer_remittance_additional_detail_bloc.dart';

@freezed
class TransferRemittanceAdditionalDetailState
    with _$TransferRemittanceAdditionalDetailState {
  const factory TransferRemittanceAdditionalDetailState.initial() = _Initial;
  const factory TransferRemittanceAdditionalDetailState.loading() = _Loading;
  const factory TransferRemittanceAdditionalDetailState.success(
      TransferRemittanceAdditionalResponse data) = _Success;
  const factory TransferRemittanceAdditionalDetailState.failed(String message) =
      _Failed;
}
