part of 'e_wallet_detail_bloc.dart';

@freezed
class EWalletDetailState with _$EWalletDetailState {
  const factory EWalletDetailState.initial() = _Initial;
  const factory EWalletDetailState.loading() = _Loading;
  const factory EWalletDetailState.getDetailSuccess(PpobCheckoutResponseModel data) = _GetDetailSuccess;
  const factory EWalletDetailState.failed(String message) = _Failed;
}
