// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'change_password_send_otp_initial_event.dart';

// part 'change_password_send_otp_initial_state.dart';

// part 'change_password_send_otp_initial_bloc.freezed.dart';

// class ChangePasswordSendOtpInitialBloc extends Bloc<
//     ChangePasswordSendOtpInitialEvent, ChangePasswordSendOtpInitialState> {
//   VerihubsService verihubsService = VerihubsService();

//   ChangePasswordSendOtpInitialBloc()
//       : super(const ChangePasswordSendOtpInitialState.initial()) {
//     on<ChangePasswordSendOtpInitialEvent>((event, emit) async {
//       await event.when(
//         sendOtpInitial: (phoneNumber, timeLimitSeconds) async {
//           emit(const ChangePasswordSendOtpInitialState.loading());
//           final response = await verihubsService.sendOtpSms(
//             phoneNumber,
//             timeLimitSeconds,
//           );
//           response.when(
//             success: (data) {
//               emit(const ChangePasswordSendOtpInitialState.success());
//             },
//             error: (message) {
//               emit(ChangePasswordSendOtpInitialState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
