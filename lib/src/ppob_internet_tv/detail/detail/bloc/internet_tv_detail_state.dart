part of 'internet_tv_detail_bloc.dart';

@freezed
class InternetTvDetailState with _$InternetTvDetailState {
  const factory InternetTvDetailState.initial() = _Initial;
  const factory InternetTvDetailState.loading() = _Loading;
  const factory InternetTvDetailState.getInternetTvDetailSuccess(PpobCheckoutResponseModel data) = _GetInternetTvDetailSuccess;
  const factory InternetTvDetailState.failed(String message) = _Failed;
}
