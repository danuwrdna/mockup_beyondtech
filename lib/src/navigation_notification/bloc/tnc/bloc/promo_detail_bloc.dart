import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/promo_detail_service.dart';
import 'package:bpay_mobile/services/models/notification/notify_promo_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_detail_event.dart';
part 'promo_detail_state.dart';
part 'promo_detail_bloc.freezed.dart';

class PromoDetailBloc extends Bloc<PromoDetailEvent, PromoDetailState> {
  PromoDetailService promoDetailService = PromoDetailService();

  PromoDetailBloc() : super(const PromoDetailState.initial()) {
    on<PromoDetailEvent>((event, emit) async {
      emit(const PromoDetailState.loading());
      final token = SharedPreferencesService.getLoginToken();
      final response = await promoDetailService.getPromoDetail(
        token ?? "",
        event.url
      );
      response.when(
        success: (data) => emit(PromoDetailState.success(data)),
        error: (message) => emit(PromoDetailState.failed(message)),
      );
    });
  }
}
