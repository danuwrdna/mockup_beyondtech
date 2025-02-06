part of 'electricity_detail_bloc.dart';

@freezed
class ElectricityDetailState with _$ElectricityDetailState {
  const factory ElectricityDetailState.initial() = _Initial;
  const factory ElectricityDetailState.loading() = _Loading;
  const factory ElectricityDetailState.getDetailSuccess(PpobCheckoutResponseModel data) = _GetDetailSuccess;
  const factory ElectricityDetailState.failed(String message) = _Failed;
}
