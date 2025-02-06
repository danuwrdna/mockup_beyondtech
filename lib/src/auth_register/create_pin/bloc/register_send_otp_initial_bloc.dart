import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_send_otp_initial_event.dart';

part 'register_send_otp_initial_state.dart';

part 'register_send_otp_initial_bloc.freezed.dart';

class RegisterSendOtpInitialBloc
    extends Bloc<RegisterSendOtpInitialEvent, RegisterSendOtpInitialState> {
  VerihubsService verihubsService = VerihubsService();

  RegisterSendOtpInitialBloc()
      : super(const RegisterSendOtpInitialState.initial()) {
    on<RegisterSendOtpInitialEvent>((event, emit) async {
      await event.when(
        sendOtpWhatsapp: (phoneNumber, timeLimitSeconds) async {
          emit(const RegisterSendOtpInitialState.loading());
          // final response = await verihubsService.sendOtpWhatsapp(
          //   phoneNumber,
          //   timeLimitSeconds,
          // );

          final response = await verihubsService.sendOtpSms(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const RegisterSendOtpInitialState.success());
            },
            error: (message) {
              emit(RegisterSendOtpInitialState.failed(message));
            },
          );
        },
      );
    });
  }
}
