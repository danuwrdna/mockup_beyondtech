import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_province_event.dart';

part 'passport_province_state.dart';

part 'passport_province_bloc.freezed.dart';

class PassportProvinceBloc
    extends Bloc<PassportProvinceEvent, PassportProvinceState> {
  AddressService addressService = AddressService();

  PassportProvinceBloc() : super(const PassportProvinceState.initial()) {
    on<PassportProvinceEvent>((event, emit) async {
      await event.when(
        getProvince: () async {
          emit(const PassportProvinceState.loading());
          final response = await addressService.getProvince();
          response.when(
            success: (data) => emit(PassportProvinceState.success(data)),
            error: (message) => emit(PassportProvinceState.failed(message)),
          );
        },
      );
    });
  }
}
