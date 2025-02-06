import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_verify_otp_sms_event.dart';

part 'change_password_verify_otp_sms_state.dart';

part 'change_password_verify_otp_sms_bloc.freezed.dart';

class ChangePasswordVerifyOtpSmsBloc extends Bloc<
    ChangePasswordVerifyOtpSmsEvent, ChangePasswordVerifyOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePasswordVerifyOtpSmsBloc()
      : super(const ChangePasswordVerifyOtpSmsState.initial()) {
    on<ChangePasswordVerifyOtpSmsEvent>((event, emit) async {
      await event.when(
        verifyOtpSms: (phoneNumber, otpCode) async {
          emit(const ChangePasswordVerifyOtpSmsState.loading());
          final response = await verihubsService.verifyOtpSms(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) {
              emit(const ChangePasswordVerifyOtpSmsState.success());
            },
            error: (message) {
              emit(ChangePasswordVerifyOtpSmsState.failed(message));
            },
          );
        },
      );
    });
  }
}
