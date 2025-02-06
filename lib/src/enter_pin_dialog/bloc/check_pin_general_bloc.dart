import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_pin_general_event.dart';

part 'check_pin_general_state.dart';

part 'check_pin_general_bloc.freezed.dart';

class CheckPinGeneralBloc
    extends Bloc<CheckPinGeneralEvent, CheckPinGeneralState> {
  // AuthService authService = AuthService();

  CheckPinGeneralBloc() : super(const CheckPinGeneralState.initial()) {
    on<CheckPinGeneralEvent>((event, emit) async {
      await event.when(
        checkPin: (pin) async {
          emit(const CheckPinGeneralState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          // final response = await authService.checkPin(token, pin);
          // response.when(
          //   success: (data) => emit(const CheckPinGeneralState.success()),
          //   error: (message) => emit(CheckPinGeneralState.failed(message)),
          // );
        },
      );
    });
  }
}
