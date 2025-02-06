part of 'bpjs_detail_bloc.dart';

@freezed
class BpjsDetailEvent with _$BpjsDetailEvent {
  const factory BpjsDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}