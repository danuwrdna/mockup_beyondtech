part of 'phone_postpaid_inquiry_bloc.dart';

@freezed
class PhonePostpaidInquiryState with _$PhonePostpaidInquiryState {
  const factory PhonePostpaidInquiryState.initial() = _Initial;
  const factory PhonePostpaidInquiryState.loading() = _Loading;
  const factory PhonePostpaidInquiryState.success(InquiryPostpaidResponseModel data) = _Success;
  const factory PhonePostpaidInquiryState.failed(String message) = _Failed;
}
