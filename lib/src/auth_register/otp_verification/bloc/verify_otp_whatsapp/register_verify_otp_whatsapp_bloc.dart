import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_verify_otp_whatsapp_event.dart';

part 'register_verify_otp_whatsapp_state.dart';

part 'register_verify_otp_whatsapp_bloc.freezed.dart';

class RegisterVerifyOtpWhatsappBloc extends Bloc<RegisterVerifyOtpWhatsappEvent,
    RegisterVerifyOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  RegisterVerifyOtpWhatsappBloc()
      : super(const RegisterVerifyOtpWhatsappState.initial()) {
    on<RegisterVerifyOtpWhatsappEvent>((event, emit) async {
      await event.when(
        verifyOtpWhatsapp: (phoneNumber, otpCode) async {
          emit(const RegisterVerifyOtpWhatsappState.loading());
          final response = await verihubsService.verifyOtpWhatsapp(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) {
              emit(const RegisterVerifyOtpWhatsappState.success());
            },
            error: (message) {
              emit(RegisterVerifyOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
