import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_send_otp_whatsapp_event.dart';

part 'change_password_send_otp_whatsapp_state.dart';

part 'change_password_send_otp_whatsapp_bloc.freezed.dart';

class ChangePasswordSendOtpWhatsappBloc extends Bloc<
    ChangePasswordSendOtpWhatsappEvent, ChangePasswordSendOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePasswordSendOtpWhatsappBloc()
      : super(const ChangePasswordSendOtpWhatsappState.initial()) {
    on<ChangePasswordSendOtpWhatsappEvent>((event, emit) async {
      await event.when(
        sendOtpWhatsapp: (phoneNumber, timeLimitSeconds) async {
          emit(const ChangePasswordSendOtpWhatsappState.loading());
          final response = await verihubsService.sendOtpWhatsapp(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const ChangePasswordSendOtpWhatsappState.success());
            },
            error: (message) {
              emit(ChangePasswordSendOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
