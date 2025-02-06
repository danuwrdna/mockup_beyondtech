// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/phone_number_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_pin_phone_number_event.dart';

// part 'check_pin_phone_number_state.dart';

// part 'check_pin_phone_number_bloc.freezed.dart';

// class CheckPinPhoneNumberBloc
//     extends Bloc<CheckPinPhoneNumberEvent, CheckPinPhoneNumberState> {
//   ProfileService profileService = ProfileService();

//   CheckPinPhoneNumberBloc() : super(const CheckPinPhoneNumberState.initial()) {
//     on<CheckPinPhoneNumberEvent>((event, emit) async {
//       await event.when(
//         getPhoneNumber: () async {
//           emit(const CheckPinPhoneNumberState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getPhoneNumber(token);
//           response.when(
//             success: (data) => emit(CheckPinPhoneNumberState.success(data)),
//             error: (message) => emit(CheckPinPhoneNumberState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
