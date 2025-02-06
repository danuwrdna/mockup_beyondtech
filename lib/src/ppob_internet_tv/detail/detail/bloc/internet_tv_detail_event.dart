part of 'internet_tv_detail_bloc.dart';

@freezed
class InternetTvDetailEvent with _$InternetTvDetailEvent {
  const factory InternetTvDetailEvent.getDetail(String paymentCode, int nominal) = _GetDetail;
}