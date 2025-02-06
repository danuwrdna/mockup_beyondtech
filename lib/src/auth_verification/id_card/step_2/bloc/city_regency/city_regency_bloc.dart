import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_regency_event.dart';

part 'city_regency_state.dart';

part 'city_regency_bloc.freezed.dart';

class CityRegencyBloc extends Bloc<CityRegencyEvent, CityRegencyState> {
  AddressService addressService = AddressService();

  CityRegencyBloc() : super(const CityRegencyState.initial()) {
    on<CityRegencyEvent>((event, emit) async {
      await event.when(
        getCityRegency: (provinceId) async {
          emit(const CityRegencyState.loading());
          final response = await addressService.getCityRegency(provinceId);
          response.when(
            success: (data) => emit(CityRegencyState.success(data)),
            error: (message) => emit(CityRegencyState.failed(message)),
          );
        },
      );
    });
  }
}
