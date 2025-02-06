import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_pin_send_otp_initial_event.dart';

part 'change_pin_send_otp_initial_state.dart';

part 'change_pin_send_otp_initial_bloc.freezed.dart';

class ChangePinSendOtpInitialBloc
    extends Bloc<ChangePinSendOtpInitialEvent, ChangePinSendOtpInitialState> {
  VerihubsService verihubsService = VerihubsService();

  ChangePinSendOtpInitialBloc()
      : super(const ChangePinSendOtpInitialState.initial()) {
    on<ChangePinSendOtpInitialEvent>((event, emit) async {
      await event.when(
        sendOtpInitial: (phoneNumber, timeLimitSeconds) async {
          emit(const ChangePinSendOtpInitialState.loading());
          final response = await verihubsService.sendOtpSms(
            phoneNumber,
            timeLimitSeconds,
          );
          response.when(
            success: (data) {
              emit(const ChangePinSendOtpInitialState.success());
            },
            error: (message) {
              emit(ChangePinSendOtpInitialState.failed(message));
            },
          );
        },
      );
    });
  }
}
