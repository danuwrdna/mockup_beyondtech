// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_pin_event.dart';

// part 'check_pin_state.dart';

// part 'check_pin_bloc.freezed.dart';

// class CheckPinBloc extends Bloc<CheckPinEvent, CheckPinState> {
//   // AuthService authService = AuthService();

//   CheckPinBloc() : super(const CheckPinState.initial()) {
//     on<CheckPinEvent>((event, emit) async {
//       await event.when(
//         checkPin: (currentPin) async {
//           emit(const CheckPinState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           // final response = await authService.checkPin(
//           //   token,
//           //   currentPin,
//           // );
//           // response.when(
//           //   success: (data) => emit(const CheckPinState.isCorrect()),
//           //   error: (message) => emit(CheckPinState.failed(message)),
//           // );
//         },
//       );
//     });
//   }
// }
