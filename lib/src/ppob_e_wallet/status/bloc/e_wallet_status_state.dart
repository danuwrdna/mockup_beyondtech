part of 'e_wallet_status_bloc.dart';

@freezed
class EWalletStatusState with _$EWalletStatusState {
  const factory EWalletStatusState.initial() = _Initial;
  const factory EWalletStatusState.loading() = _Loading;
  const factory EWalletStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory EWalletStatusState.failed(String message) = _Failed;
}
