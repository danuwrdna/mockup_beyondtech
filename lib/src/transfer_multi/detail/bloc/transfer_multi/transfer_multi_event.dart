part of 'transfer_multi_bloc.dart';

@freezed
class TransferMultiEvent with _$TransferMultiEvent {
  const factory TransferMultiEvent.transferMulti(
    String paymentCode,
    String? pin,
    List<RecipientPayloadItemModel> destinations,
    String? isBiometricValid,
  ) = _TransferMulti;
}
