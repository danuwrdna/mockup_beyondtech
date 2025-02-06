import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_district_event.dart';

part 'current_district_state.dart';

part 'current_district_bloc.freezed.dart';

class CurrentDistrictBloc
    extends Bloc<CurrentDistrictEvent, CurrentDistrictState> {
  AddressService addressService = AddressService();

  CurrentDistrictBloc() : super(const CurrentDistrictState.initial()) {
    on<CurrentDistrictEvent>((event, emit) async {
      await event.when(
        getCurrentDistrict: (currentCityRegencyId) async {
          emit(const CurrentDistrictState.loading());
          final response = await addressService.getDistrict(
            currentCityRegencyId,
          );
          response.when(
            success: (data) => emit(CurrentDistrictState.success(data)),
            error: (message) => emit(CurrentDistrictState.failed(message)),
          );
        },
      );
    });
  }
}
