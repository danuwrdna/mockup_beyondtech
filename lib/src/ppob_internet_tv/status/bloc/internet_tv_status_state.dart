part of 'internet_tv_status_bloc.dart';

@freezed
class InternetTvStatusState with _$InternetTvStatusState {
  const factory InternetTvStatusState.initial() = _Initial;
  const factory InternetTvStatusState.loading() = _Loading;
  const factory InternetTvStatusState.success(PpobTransactionDetailResponseModel data) = _Success;
  const factory InternetTvStatusState.failed(String message) = _Failed;
}
