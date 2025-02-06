import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_sms_event.dart';

part 'send_otp_sms_state.dart';

part 'send_otp_sms_bloc.freezed.dart';

class SendOtpSmsBloc extends Bloc<SendOtpSmsEvent, SendOtpSmsState> {
  VerihubsService verihubsService = VerihubsService();

  SendOtpSmsBloc() : super(const SendOtpSmsState.initial()) {
    on<SendOtpSmsEvent>((event, emit) async {
      await event.when(
        sendOtpSms: (phoneNumber, timeLimitSeconds) async {
          emit(const SendOtpSmsState.loading());
          final response = await verihubsService.sendOtpSms(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) => emit(const SendOtpSmsState.success()),
            error: (message) => emit(SendOtpSmsState.failed(message)),
          );
        },
      );
    });
  }
}
