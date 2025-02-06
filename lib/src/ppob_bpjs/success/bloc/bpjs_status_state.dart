part of 'bpjs_status_bloc.dart';

@freezed
class BpjsStatusState with _$BpjsStatusState {
  const factory BpjsStatusState.initial() = _Initial;
  const factory BpjsStatusState.loading() = _Loading;
  const factory BpjsStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory BpjsStatusState.failed(String message) = _Failed;
}
