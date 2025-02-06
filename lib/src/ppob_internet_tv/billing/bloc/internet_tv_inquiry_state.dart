part of 'internet_tv_inquiry_bloc.dart';

@freezed
class InternetTvInquiryState with _$InternetTvInquiryState {
  const factory InternetTvInquiryState.initial() = _Initial;
  const factory InternetTvInquiryState.loading() = _Loading;
  const factory InternetTvInquiryState.success(InquiryPostpaidResponseModel data) = _Success;
  const factory InternetTvInquiryState.failed(String message) = _Failed;
}
