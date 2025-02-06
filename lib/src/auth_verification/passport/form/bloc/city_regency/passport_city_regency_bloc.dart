import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/city_regency_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_city_regency_event.dart';

part 'passport_city_regency_state.dart';

part 'passport_city_regency_bloc.freezed.dart';

class PassportCityRegencyBloc
    extends Bloc<PassportCityRegencyEvent, PassportCityRegencyState> {
  AddressService addressService = AddressService();

  PassportCityRegencyBloc() : super(const PassportCityRegencyState.initial()) {
    on<PassportCityRegencyEvent>((event, emit) async {
      await event.when(
        getCityRegency: (provinceId) async {
          emit(const PassportCityRegencyState.loading());
          final response = await addressService.getCityRegency(provinceId);
          response.when(
            success: (data) => emit(PassportCityRegencyState.success(data)),
            error: (message) => emit(PassportCityRegencyState.failed(message)),
          );
        },
      );
    });
  }
}
