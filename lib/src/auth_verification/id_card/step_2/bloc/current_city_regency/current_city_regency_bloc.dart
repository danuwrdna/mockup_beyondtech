import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_city_regency_event.dart';

part 'current_city_regency_state.dart';

part 'current_city_regency_bloc.freezed.dart';

class CurrentCityRegencyBloc
    extends Bloc<CurrentCityRegencyEvent, CurrentCityRegencyState> {
  AddressService addressService = AddressService();

  CurrentCityRegencyBloc() : super(const CurrentCityRegencyState.initial()) {
    on<CurrentCityRegencyEvent>((event, emit) async {
      await event.when(
        getCurrentCityRegency: (currentProvinceId) async {
          emit(const CurrentCityRegencyState.loading());
          final response = await addressService.getCityRegency(
            currentProvinceId,
          );
          response.when(
            success: (data) => emit(CurrentCityRegencyState.success(data)),
            error: (message) => emit(CurrentCityRegencyState.failed(message)),
          );
        },
      );
    });
  }
}
