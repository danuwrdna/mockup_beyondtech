import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_event.dart';

part 'province_state.dart';

part 'province_bloc.freezed.dart';

class ProvinceBloc extends Bloc<ProvinceEvent, ProvinceState> {
  AddressService addressService = AddressService();

  ProvinceBloc() : super(const ProvinceState.initial()) {
    on<ProvinceEvent>((event, emit) async {
      await event.when(
        getProvinceList: () async {
          emit(const ProvinceState.loading());
          final response = await addressService.getProvince();
          response.when(
            success: (data) => emit(ProvinceState.success(data)),
            error: (message) => emit(ProvinceState.failed(message)),
          );
        },
      );
    });
  }
}
