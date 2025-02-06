part of 'water_bills_inquiry_bloc.dart';

@freezed
class WaterBillsInquiryState with _$WaterBillsInquiryState {
  const factory WaterBillsInquiryState.initial() = _Initial;
  const factory WaterBillsInquiryState.loading() = _Loading;
  const factory WaterBillsInquiryState.success(InquiryPostpaidResponseModel data) = _Success;
  const factory WaterBillsInquiryState.failed(String message) = _Failed;
}
