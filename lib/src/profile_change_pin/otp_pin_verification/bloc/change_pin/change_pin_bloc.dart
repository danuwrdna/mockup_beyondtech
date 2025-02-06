import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_event.dart';

part 'change_pin_state.dart';

part 'change_pin_bloc.freezed.dart';

class ChangePinBloc extends Bloc<ChangePinEvent, ChangePinState> {
  // AuthService authService = AuthService();

  ChangePinBloc() : super(const ChangePinState.initial()) {
    on<ChangePinEvent>((event, emit) async {
      await event.when(
        changePin: (lastPin, newPin) async {
          emit(const ChangePinState.loading());
          String token = SharedPreferencesService.getLoginToken() ?? "";
          // final response = await authService.changePin(
          //   token,
          //   lastPin,
          //   newPin,
          // );
          // response.when(
          //   success: (data) => emit(const ChangePinState.success()),
          //   error: (message) => emit(ChangePinState.failed(message)),
          // );
        },
      );
    });
  }
}
