import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_district_event.dart';

part 'passport_district_state.dart';

part 'passport_district_bloc.freezed.dart';

class PassportDistrictBloc
    extends Bloc<PassportDistrictEvent, PassportDistrictState> {
  AddressService addressService = AddressService();

  PassportDistrictBloc() : super(const PassportDistrictState.initial()) {
    on<PassportDistrictEvent>((event, emit) async {
      await event.when(
        getDistrict: (cityRegencyId) async {
          emit(const PassportDistrictState.loading());
          final response = await addressService.getDistrict(cityRegencyId);
          response.when(
            success: (data) => emit(PassportDistrictState.success(data)),
            error: (message) => emit(PassportDistrictState.failed(message)),
          );
        },
      );
    });
  }
}
