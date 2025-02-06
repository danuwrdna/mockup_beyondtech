// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'phone_verif_event.dart';
// part 'phone_verif_state.dart';
// part 'phone_verif_bloc.freezed.dart';

// class PhoneVerifBloc extends Bloc<PhoneVerifEvent, PhoneVerifState> {
//   AuthService authService = AuthService();

//   PhoneVerifBloc() : super(const PhoneVerifState.initial()) {
//     on<PhoneVerifEvent>(
//       (event, emit) async {
//         emit(const PhoneVerifState.loading());

//         String token = SharedPreferencesService.getLoginToken() ?? "";

//         final response = await authService.passwordResetToken(
//           token,
//           event.resetToken,
//         );

//         response.when(
//           success: (data) {
//             emit(const PhoneVerifState.success());
//           },
//           error: (message) {
//             emit(PhoneVerifState.failed(message));
//           },
//         );
//       },
//     );
//   }
// }
