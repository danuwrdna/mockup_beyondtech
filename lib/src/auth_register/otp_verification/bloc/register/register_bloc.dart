// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_register/create_account/models/create_account_model.dart';
// import 'package:bpay_mobile/src/auth_register/otp_verification/model/register_response_model.dart';
// import 'package:bpay_mobile/utils/helper.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'register_event.dart';

// part 'register_state.dart';

// part 'register_bloc.freezed.dart';

// class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
//   AuthService authService = AuthService();

//   RegisterBloc() : super(const RegisterState.initial()) {
//     on<RegisterEvent>((event, emit) async {
//       await event.when(
//         register: (data) async {
//           emit(const RegisterState.loading());
//           String ipAddress = await getDeviceIpAddress() ?? "";
//           String location = "Indonesia";
//           String deviceModel = await getDeviceName() ?? "";
//           String osName = await getOSName() ?? "";
//           final response = await authService.register(
//             data.email,
//             data.username,
//             data.password,
//             data.phoneNumber,
//             data.pin ?? "",
//             data.referralCode,
//             ipAddress,
//             location,
//             deviceModel,
//             osName,
//             "apps",
//           );
//           response.when(
//             success: (data) {
//               SharedPreferencesService.setLoginToken(data.token ?? "");
//               emit(RegisterState.success(data));
//             },
//             error: (message) {
//               emit(RegisterState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
