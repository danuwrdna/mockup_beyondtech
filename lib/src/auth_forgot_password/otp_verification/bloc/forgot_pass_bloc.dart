// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/services/models/auth/forgot-password/forgot_password/forgot_password_response.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'forgot_pass_event.dart';
// part 'forgot_pass_state.dart';
// part 'forgot_pass_bloc.freezed.dart';

// class ForgotPassBloc extends Bloc<ForgotPassEvent, ForgotPassState> {
//   // AuthService authService = AuthService();

//   ForgotPassBloc() : super(const ForgotPassState.initial()) {
//     on<ForgotPassEvent>(
//       (event, emit) async {
//         emit(const ForgotPassState.loading());

//         String token = SharedPreferencesService.getLoginToken() ?? "";

//         // final response = await authService.forgotPassword(
//         //   token,
//         //   event.phoneNumber,
//         // );

//         response.when(
//           success: (data) {
//             emit(ForgotPassState.success(data));
//           },
//           error: (message) {
//             emit(ForgotPassState.failed(message));
//           },
//         );
//       },
//     );
//   }
// }
