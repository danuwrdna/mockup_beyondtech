import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/bcare_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bcare_post_message_event.dart';

part 'bcare_post_message_state.dart';

part 'bcare_post_message_bloc.freezed.dart';

class BcarePostMessageBloc
    extends Bloc<BcarePostMessageEvent, BcarePostMessageState> {
  BcareService bcareService = BcareService();

  BcarePostMessageBloc() : super(const BcarePostMessageState.initial()) {
    on<BcarePostMessageEvent>((event, emit) async {
      await event.when(
        sendMessage: (message) async {
          emit(const BcarePostMessageState.loading());
          String token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await bcareService.sendMessage(token, message);
          response.when(
            success: (data) => emit(const BcarePostMessageState.success()),
            error: (message) => emit(BcarePostMessageState.failed(message)),
          );
        },
      );
    });
  }
}
