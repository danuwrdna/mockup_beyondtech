// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_login/models/login_response_model.dart';
// import 'package:bpay_mobile/utils/helper.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'login_event.dart';

// part 'login_state.dart';

// part 'login_bloc.freezed.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   AuthService authService = AuthService();

//   LoginBloc() : super(const LoginState.initial()) {
//     on<LoginEvent>((event, emit) async {
//       await event.when(
//         login: (emailOrPhone, password) async {
//           emit(const LoginState.loading());
//           String ipAddress = await getDeviceIpAddress() ?? "";
//           String location = "Indonesia";
//           String deviceModel = await getDeviceName() ?? "";
//           String osName = await getOSName() ?? "";
//           final response = await authService.login(
//             emailOrPhone,
//             password,
//             ipAddress,
//             location,
//             deviceModel,
//             osName,
//             "apps",
//           );
//           response.when(
//             success: (data) {
//               SharedPreferencesService.setLoginToken(data.token ?? "");
//               emit(LoginState.success(data));
//             },
//             error: (message) {
//               emit(LoginState.error(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
