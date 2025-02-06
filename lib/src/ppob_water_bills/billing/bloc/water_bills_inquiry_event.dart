part of 'water_bills_inquiry_bloc.dart';

@freezed
class WaterBillsInquiryEvent with _$WaterBillsInquiryEvent {
  const factory WaterBillsInquiryEvent.getBillDetail({
    required String productId,
    required String packageId,
    required String denominationId,
    required String customerId,
  }) = _GetBillDetail;
  const factory WaterBillsInquiryEvent.reset() = _Reset;
}
