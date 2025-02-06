part of 'phone_data_status_bloc.dart';

@freezed
class PhoneDataStatusState with _$PhoneDataStatusState {
  const factory PhoneDataStatusState.initial() = _Initial;
  const factory PhoneDataStatusState.loading() = _Loading;
  const factory PhoneDataStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory PhoneDataStatusState.failed(String message) = _Failed;
}
