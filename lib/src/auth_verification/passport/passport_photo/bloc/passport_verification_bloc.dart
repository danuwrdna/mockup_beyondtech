// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_verification/passport/passport_photo/models/passport_verification_response_model.dart';
// import 'package:bpay_mobile/src/auth_verification/passport/summary/models/passport_verification_data_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'passport_verification_event.dart';

// part 'passport_verification_state.dart';

// part 'passport_verification_bloc.freezed.dart';

// class PassportVerificationBloc
//     extends Bloc<PassportVerificationEvent, PassportVerificationState> {
//   AuthService authService = AuthService();

//   PassportVerificationBloc()
//       : super(const PassportVerificationState.initial()) {
//     on<PassportVerificationEvent>((event, emit) async {
//       await event.when(
//         passportVerification: (data, passportImage) async {
//           emit(const PassportVerificationState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await authService.passportVerification(
//             token,
//             data,
//             passportImage,
//           );
//           response.when(
//             success: (data) => emit(PassportVerificationState.success(data)),
//             error: (message) => emit(PassportVerificationState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
