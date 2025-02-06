// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'reset_pass_event.dart';
// part 'reset_pass_state.dart';
// part 'reset_pass_bloc.freezed.dart';

// class ResetPassBloc extends Bloc<ResetPassEvent, ResetPassState> {
//   AuthService authService = AuthService();

//   ResetPassBloc() : super(const ResetPassState.initial()) {
//     on<ResetPassEvent>(
//       (event, emit) async {
//         emit(const ResetPassState.loading());

//         String token = SharedPreferencesService.getLoginToken() ?? "";

//         final response = await authService.resetPassword(
//           token,
//           event.resetToken,
//           event.newPassword,
//           event.confirmPassword,
//         );

//         response.when(
//           success: (data) {
//             emit(const ResetPassState.success());
//           },
//           error: (message) {
//             emit(ResetPassState.failed(message));
//           },
//         );
//       },
//     );
//   }
// }
