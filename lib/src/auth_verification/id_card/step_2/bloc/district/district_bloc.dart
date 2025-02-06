import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/district_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_event.dart';

part 'district_state.dart';

part 'district_bloc.freezed.dart';

class DistrictBloc extends Bloc<DistrictEvent, DistrictState> {
  AddressService addressService = AddressService();

  DistrictBloc() : super(const DistrictState.initial()) {
    on<DistrictEvent>((event, emit) async {
      await event.when(
        getDistrict: (cityRegencyId) async {
          emit(const DistrictState.loading());
          final response = await addressService.getDistrict(cityRegencyId);
          response.when(
            success: (data) => emit(DistrictState.success(data)),
            error: (message) => emit(DistrictState.failed(message)),
          );
        },
      );
    });
  }
}
