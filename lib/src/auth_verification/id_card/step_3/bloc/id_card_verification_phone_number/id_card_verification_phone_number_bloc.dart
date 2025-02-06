import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/phone_number_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_card_verification_phone_number_event.dart';

part 'id_card_verification_phone_number_state.dart';

part 'id_card_verification_phone_number_bloc.freezed.dart';

class IdCardVerificationPhoneNumberBloc extends Bloc<
    IdCardVerificationPhoneNumberEvent, IdCardVerificationPhoneNumberState> {
  ProfileService profileService = ProfileService();

  IdCardVerificationPhoneNumberBloc()
      : super(const IdCardVerificationPhoneNumberState.initial()) {
    on<IdCardVerificationPhoneNumberEvent>((event, emit) async {
      await event.when(
        getPhoneNumber: () async {
          emit(const IdCardVerificationPhoneNumberState.loading());
          final String token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await profileService.getPhoneNumber(token);
          response.when(
            success: (data) {
              emit(IdCardVerificationPhoneNumberState.success(data));
            },
            error: (message) {
              emit(IdCardVerificationPhoneNumberState.failed(message));
            },
          );
        },
      );
    });
  }
}
