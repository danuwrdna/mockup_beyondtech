import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/bcare_service.dart';
import 'package:bpay_mobile/src/profile_bcare/bcare_chat_customer_service/bcare_message/bcare_get_message/models/bcare_get_message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bcare_get_message_event.dart';

part 'bcare_get_message_state.dart';

part 'bcare_get_message_bloc.freezed.dart';

class BcareGetMessageBloc
    extends Bloc<BcareGetMessageEvent, BcareGetMessageState> {
  BcareService bcareService = BcareService();

  BcareGetMessageBloc() : super(const BcareGetMessageState.initial()) {
    on<BcareGetMessageEvent>((event, emit) async {
      await event.when(
        getMessage: () async {
          emit(const BcareGetMessageState.loading());
          try {
            String token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await bcareService.getMessage(token);
            response.when(
              success: (BcareGetMessageResponseModel responseModel) {
                List<GetMessageData> messages = responseModel.data?.data ?? [];
                emit(BcareGetMessageState.success(messages));
              },
              error: (String message) {
                emit(BcareGetMessageState.failed(message));
              },
            );
          } catch (e) {
            emit(BcareGetMessageState.failed(e.toString()));
          }
        },
      );
    });
  }
}
