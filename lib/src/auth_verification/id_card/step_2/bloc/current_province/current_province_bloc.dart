import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/address_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/province_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_province_event.dart';

part 'current_province_state.dart';

part 'current_province_bloc.freezed.dart';

class CurrentProvinceBloc
    extends Bloc<CurrentProvinceEvent, CurrentProvinceState> {
  AddressService addressService = AddressService();

  CurrentProvinceBloc() : super(const CurrentProvinceState.initial()) {
    on<CurrentProvinceEvent>((event, emit) async {
      await event.when(
        getCurrentProvince: () async {
          emit(const CurrentProvinceState.loading());
          final response = await addressService.getProvince();
          response.when(
            success: (data) => emit(CurrentProvinceState.success(data)),
            error: (message) => emit(CurrentProvinceState.failed(message)),
          );
        },
      );
    });
  }
}
