part of 'transfer_single_bloc.dart';

@freezed
class TransferSingleEvent with _$TransferSingleEvent {
  const factory TransferSingleEvent.transferSingle(
    String paymentCode,
    String? pin,
    RecipientPayloadItemModel destinationPayload,
    String? isBiometricValid,
  ) = _TransferSingle;
}
