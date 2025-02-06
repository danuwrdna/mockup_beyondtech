part of 'phone_data_detail_bloc.dart';

@freezed
class PhoneDataDetailState with _$PhoneDataDetailState {
  const factory PhoneDataDetailState.initial() = _Initial;
  const factory PhoneDataDetailState.loading() = _Loading;
  const factory PhoneDataDetailState.success(PpobCheckoutResponseModel data) = _Success;
  const factory PhoneDataDetailState.failed(String message) = _Failed;
}
