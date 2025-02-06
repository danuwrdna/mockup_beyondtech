import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_verify_otp_sms_event.dart';

part 'register_verify_otp_sms_state.dart';

part 'register_verify_otp_sms_bloc.freezed.dart';

class RegisterVerifyOtpSmsBloc
    extends Bloc<RegisterVerifyOtpSmsEvent, RegisterVerifyOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  RegisterVerifyOtpSmsBloc()
      : super(const RegisterVerifyOtpSmsState.initial()) {
    on<RegisterVerifyOtpSmsEvent>((event, emit) async {
      await event.when(
        verifyOtpSms: (phoneNumber, otpCode) async {
          emit(const RegisterVerifyOtpSmsState.loading());
          final response = await verihubsService.verifyOtpSms(
            phoneNumber,
            otpCode,
          );
          response.when(
            success: (data) => emit(const RegisterVerifyOtpSmsState.success()),
            error: (message) => emit(RegisterVerifyOtpSmsState.failed(message)),
          );
        },
      );
    });
  }
}
