part of 'phone_postpaid_status_bloc.dart';

@freezed
class PhonePostpaidStatusState with _$PhonePostpaidStatusState {
  const factory PhonePostpaidStatusState.initial() = _Initial;
  const factory PhonePostpaidStatusState.loading() = _Loading;
  const factory PhonePostpaidStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory PhonePostpaidStatusState.failed(String message) = _Failed;
}
