part of 'e_wallet_detail_bloc.dart';

@freezed
class EWalletDetailEvent with _$EWalletDetailEvent {
  const factory EWalletDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}
