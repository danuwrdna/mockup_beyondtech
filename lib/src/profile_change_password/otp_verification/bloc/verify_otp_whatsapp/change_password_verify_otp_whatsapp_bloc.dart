import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_verify_otp_whatsapp_event.dart';

part 'change_password_verify_otp_whatsapp_state.dart';

part 'change_password_verify_otp_whatsapp_bloc.freezed.dart';

class ChangePasswordVerifyOtpWhatsappBloc extends Bloc<
    ChangePasswordVerifyOtpWhatsappEvent,
    ChangePasswordVerifyOtpWhatsappState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePasswordVerifyOtpWhatsappBloc()
      : super(const ChangePasswordVerifyOtpWhatsappState.initial()) {
    on<ChangePasswordVerifyOtpWhatsappEvent>((event, emit) async {
      await event.when(
        verifyOtpWhatsapp: (phoneNumber, otpCode) async {
          emit(const ChangePasswordVerifyOtpWhatsappState.loading());
          final response = await verihubsService.verifyOtpWhatsapp(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) {
              emit(const ChangePasswordVerifyOtpWhatsappState.success());
            },
            error: (message) {
              emit(ChangePasswordVerifyOtpWhatsappState.failed(message));
            },
          );
        },
      );
    });
  }
}
