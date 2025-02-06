import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';

part 'change_password_state.dart';

part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  // AuthService authService = AuthService();

  ChangePasswordBloc() : super(const ChangePasswordState.initial()) {
    on<ChangePasswordEvent>((event, emit) async {
      await event.when(
        changePassword: (lastPassword, newPassword) async {
          emit(const ChangePasswordState.loading());
          String token = SharedPreferencesService.getLoginToken() ?? "";
          // final response = await authService.changePassword(
          //   token,
          //   lastPassword,
          //   newPassword,
          // );
          // response.when(
          //   success: (data) => emit(const ChangePasswordState.success()),
          //   error: (message) => emit(ChangePasswordState.failed(message)),
          // );
        },
      );
    });
  }
}
