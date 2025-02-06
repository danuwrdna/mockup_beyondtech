part of 'bpjs_detail_bloc.dart';

@freezed
class BpjsDetailState with _$BpjsDetailState {
  const factory BpjsDetailState.initial() = _Initial;
  const factory BpjsDetailState.loading() = _Loading;
  const factory BpjsDetailState.getBpjsDetailSuccess(PpobCheckoutResponseModel data) = _GetBpjsDetailSuccess;
  const factory BpjsDetailState.failed(String message) = _Failed ;
}
