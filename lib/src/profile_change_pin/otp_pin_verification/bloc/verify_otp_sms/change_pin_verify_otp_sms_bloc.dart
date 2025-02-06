import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_verify_otp_sms_event.dart';

part 'change_pin_verify_otp_sms_state.dart';

part 'change_pin_verify_otp_sms_bloc.freezed.dart';

class ChangePinVerifyOtpSmsBloc
    extends Bloc<ChangePinVerifyOtpSmsEvent, ChangePinVerifyOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePinVerifyOtpSmsBloc()
      : super(const ChangePinVerifyOtpSmsState.initial()) {
    on<ChangePinVerifyOtpSmsEvent>((event, emit) async {
      await event.when(
        verifyOtpSms: (phoneNumber, otpCode) async {
          emit(const ChangePinVerifyOtpSmsState.loading());
          final response = await verihubsService.verifyOtpSms(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) {
              emit(const ChangePinVerifyOtpSmsState.success());
            },
            error: (message) {
              emit(ChangePinVerifyOtpSmsState.failed(message));
            },
          );
        },
      );
    });
  }
}
