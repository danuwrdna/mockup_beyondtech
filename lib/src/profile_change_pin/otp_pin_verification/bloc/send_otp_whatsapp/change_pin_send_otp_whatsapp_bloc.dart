import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_send_otp_whatsapp_event.dart';

part 'change_pin_send_otp_whatsapp_state.dart';

part 'change_pin_send_otp_whatsapp_bloc.freezed.dart';

class ChangePinSendOtpWhatsappBloc
    extends Bloc<ChangePinSendOtpWhatsappEvent, ChangePinSendOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePinSendOtpWhatsappBloc()
      : super(const ChangePinSendOtpWhatsappState.initial()) {
    on<ChangePinSendOtpWhatsappEvent>((event, emit) async {
      await event.when(
        sendOtpWhatsapp: (phoneNumber, timeLimitSeconds) async {
          emit(const ChangePinSendOtpWhatsappState.loading());
          final response = await verihubsService.sendOtpWhatsapp(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const ChangePinSendOtpWhatsappState.success());
            },
            error: (message) {
              emit(ChangePinSendOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
