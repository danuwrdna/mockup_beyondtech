part of 'phone_postpaid_detail_bloc.dart';

@freezed
class PhonePostpaidDetailState with _$PhonePostpaidDetailState {
  const factory PhonePostpaidDetailState.initial() = _Initial;
  const factory PhonePostpaidDetailState.loading() = _Loading;
  const factory PhonePostpaidDetailState.getPhonePostPaidDetailSuccess(PpobCheckoutResponseModel data) = _GetPhonePostPaidDetailSuccess;
  const factory PhonePostpaidDetailState.failed(String message) = _Failed;
}
