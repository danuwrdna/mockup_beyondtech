import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_send_otp_sms_event.dart';

part 'change_password_send_otp_sms_state.dart';

part 'change_password_send_otp_sms_bloc.freezed.dart';

class ChangePasswordSendOtpSmsBloc
    extends Bloc<ChangePasswordSendOtpSmsEvent, ChangePasswordSendOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePasswordSendOtpSmsBloc()
      : super(const ChangePasswordSendOtpSmsState.initial()) {
    on<ChangePasswordSendOtpSmsEvent>((event, emit) async {
      await event.when(
        sendOtpSms: (phoneNumber, timeLimitSeconds) async {
          emit(const ChangePasswordSendOtpSmsState.loading());
          final response = await verihubsService.sendOtpSms(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const ChangePasswordSendOtpSmsState.success());
            },
            error: (message) {
              emit(ChangePasswordSendOtpSmsState.failed(message));
            },
          );
        },
      );
    });
  }
}
