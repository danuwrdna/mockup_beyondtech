import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_send_otp_whatsapp_event.dart';

part 'register_send_otp_whatsapp_state.dart';

part 'register_send_otp_whatsapp_bloc.freezed.dart';

class RegisterSendOtpWhatsappBloc
    extends Bloc<RegisterSendOtpWhatsappEvent, RegisterSendOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  RegisterSendOtpWhatsappBloc()
      : super(const RegisterSendOtpWhatsappState.initial()) {
    on<RegisterSendOtpWhatsappEvent>((event, emit) async {
      await event.when(
        sendOtpWhatsapp: (phoneNumber, timeLimitSeconds) async {
          emit(const RegisterSendOtpWhatsappState.loading());
          final response = await verihubsService.sendOtpWhatsapp(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const RegisterSendOtpWhatsappState.success());
            },
            error: (message) {
              emit(RegisterSendOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
