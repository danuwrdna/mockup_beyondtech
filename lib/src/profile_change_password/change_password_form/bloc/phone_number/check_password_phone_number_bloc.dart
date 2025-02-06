// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/phone_number_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_password_phone_number_event.dart';

// part 'check_password_phone_number_state.dart';

// part 'check_password_phone_number_bloc.freezed.dart';

// class CheckPasswordPhoneNumberBloc
//     extends Bloc<CheckPasswordPhoneNumberEvent, CheckPasswordPhoneNumberState> {
//   ProfileService profileService = ProfileService();

//   CheckPasswordPhoneNumberBloc()
//       : super(const CheckPasswordPhoneNumberState.initial()) {
//     on<CheckPasswordPhoneNumberEvent>((event, emit) async {
//       await event.when(
//         getPhoneNumber: () async {
//           emit(const CheckPasswordPhoneNumberState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getPhoneNumber(token);
//           response.when(
//             success: (data) {
//               emit(CheckPasswordPhoneNumberState.success(data));
//             },
//             error: (message) {
//               emit(CheckPasswordPhoneNumberState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
