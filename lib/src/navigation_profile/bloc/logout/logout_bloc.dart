import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';

part 'logout_state.dart';

part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  // AuthService authService = AuthService();

  LogoutBloc() : super(const LogoutState.initial()) {
    on<LogoutEvent>((event, emit) async {
      await event.when(logout: () async {
        emit(const LogoutState.loading());
        String token = SharedPreferencesService.getLoginToken() ?? "";
        // final response = await authService.logout(token);

        // await response.when(
        //   success: (data) async {
        //     await SharedPreferencesService.removeLoginToken();
        //     emit(const LogoutState.success());
        //   },
        //   error: (message) {
        //     emit(LogoutState.error(message));
        //   },
      });
    });
  }
}
