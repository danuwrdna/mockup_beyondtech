part of 'phone_postpaid_inquiry_bloc.dart';

@freezed
class PhonePostpaidInquiryEvent with _$PhonePostpaidInquiryEvent {
  const factory PhonePostpaidInquiryEvent.getBillDetail({
    required String productId,
    required String packageId,
    required String denominationId,
    required String customerId,
  }) = _GetBillDetail;
  const factory PhonePostpaidInquiryEvent.reset() = _Reset;
}
