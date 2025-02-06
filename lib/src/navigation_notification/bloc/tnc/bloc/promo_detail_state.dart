part of 'promo_detail_bloc.dart';

@freezed
class PromoDetailState with _$PromoDetailState {
  const factory PromoDetailState.initial() = _Initial;
  const factory PromoDetailState.loading() = _Loading;
  const factory PromoDetailState.success(NotifyPromoDetailModel data) = _Success;
  const factory PromoDetailState.failed(String message) = _Failed;
}
