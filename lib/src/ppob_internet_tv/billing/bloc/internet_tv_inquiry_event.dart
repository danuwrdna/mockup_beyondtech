part of 'internet_tv_inquiry_bloc.dart';

@freezed
class InternetTvInquiryEvent with _$InternetTvInquiryEvent {
  const factory InternetTvInquiryEvent.getBillDetail({
    required String productId,
    required String packageId,
    required String denominationId,
    required String customerId,
  }) = _GetBillDetail;
  const factory InternetTvInquiryEvent.reset() = _Reset;
}
