import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_verify_otp_whatsapp_event.dart';

part 'change_pin_verify_otp_whatsapp_state.dart';

part 'change_pin_verify_otp_whatsapp_bloc.freezed.dart';

class ChangePinVerifyOtpWhatsappBloc extends Bloc<
    ChangePinVerifyOtpWhatsappEvent, ChangePinVerifyOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePinVerifyOtpWhatsappBloc()
      : super(const ChangePinVerifyOtpWhatsappState.initial()) {
    on<ChangePinVerifyOtpWhatsappEvent>((event, emit) async {
      await event.when(
        verifyOtpWhatsapp: (phoneNumber, otpCode) async {
          emit(const ChangePinVerifyOtpWhatsappState.loading());
          final response = await verihubsService.verifyOtpWhatsapp(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) {
              emit(const ChangePinVerifyOtpWhatsappState.success());
            },
            error: (message) {
              emit(ChangePinVerifyOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
