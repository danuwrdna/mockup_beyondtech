import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_send_otp_sms_event.dart';

part 'change_pin_send_otp_sms_state.dart';

part 'change_pin_send_otp_sms_bloc.freezed.dart';

class ChangePinSendOtpSmsBloc
    extends Bloc<ChangePinSendOtpSmsEvent, ChangePinSendOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePinSendOtpSmsBloc() : super(const ChangePinSendOtpSmsState.initial()) {
    on<ChangePinSendOtpSmsEvent>((event, emit) async {
      await event.when(
        sendOtpSms: (phoneNumber, timeLimitSeconds) async {
          emit(const ChangePinSendOtpSmsState.loading());
          final response = await verihubsService.sendOtpSms(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) => emit(const ChangePinSendOtpSmsState.success()),
            error: (message) => emit(ChangePinSendOtpSmsState.failed(message)),
          );
        },
      );
    });
  }
}
