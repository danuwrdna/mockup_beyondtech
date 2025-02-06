part of 'electricity_status_bloc.dart';

@freezed
class ElectricityStatusState with _$ElectricityStatusState {
  const factory ElectricityStatusState.initial() = _Initial;
  const factory ElectricityStatusState.loading() = _Loading;
  const factory ElectricityStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory ElectricityStatusState.failed(String message) = _Failed;
}
