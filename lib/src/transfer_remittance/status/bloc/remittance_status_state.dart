part of 'remittance_status_bloc.dart';

@freezed
class RemittanceStatusState with _$RemittanceStatusState {
  const factory RemittanceStatusState.initial() = _Initial;
  const factory RemittanceStatusState.loading() = _Loading;
  const factory RemittanceStatusState.success(RemittanceTransactionDetailResponseModel data) = _Success;
  const factory RemittanceStatusState.failed(String message) = _Failed;
}
