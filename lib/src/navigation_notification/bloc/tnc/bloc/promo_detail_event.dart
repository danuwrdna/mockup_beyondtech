part of 'promo_detail_bloc.dart';

@freezed
class PromoDetailEvent with _$PromoDetailEvent {
  const factory PromoDetailEvent.getPromoDetail(String url) = _GetPromoDetail;
}