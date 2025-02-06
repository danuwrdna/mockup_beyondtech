part of 'transfer_balance_bloc.dart';

@freezed
class TransferBalanceEvent with _$TransferBalanceEvent {
  const factory TransferBalanceEvent.transferBalance(
    int nominal,
    String? pin,
    String? notes,
    String? recipientPhoneNumber,
    String? isBiometricValid,
  ) = _TransferBalance;
}
