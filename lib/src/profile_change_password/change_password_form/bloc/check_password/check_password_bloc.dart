// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_password_event.dart';

// part 'check_password_state.dart';

// part 'check_password_bloc.freezed.dart';

// class CheckPasswordBloc extends Bloc<CheckPasswordEvent, CheckPasswordState> {
//   // AuthService authService = AuthService();

//   CheckPasswordBloc() : super(const CheckPasswordState.initial()) {
//     on<CheckPasswordEvent>((event, emit) async {
//       await event.when(
//         checkPassword: (lastPassword, newPassword) async {
//           emit(const CheckPasswordState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           // final response = await authService.checkPassword(
//           //   token,
//           //   lastPassword,
//           //   newPassword,
//           // );
//           // response.when(
//           //   success: (data) => emit(const CheckPasswordState.isCorrect()),
//           //   error: (message) => emit(CheckPasswordState.failed(message)),
//           // );
//         },
//       );
//     });
//   }
// }
