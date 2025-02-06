import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_service.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition/term_and_condition_response_model.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition_detail/term_and_condition_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_and_conditions_event.dart';

part 'terms_and_conditions_state.dart';

part 'terms_and_conditions_bloc.freezed.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndConditionsEvent, TermsAndConditionsState> {
  final ProfileService _profileService = ProfileService();

  TermsAndConditionsBloc() : super(const TermsAndConditionsState.initial()) {
    on<TermsAndConditionsEvent>((event, emit) async {
      await event.when(
        getList: () async {
          emit(const TermsAndConditionsState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await _profileService.termAndConditionList(
            token: token,
            category: "terms and conditions",
          );
          response.when(
            success: (data) => emit(TermsAndConditionsState.successList(data)),
            error: (message) => emit(TermsAndConditionsState.failed(message)),
          );
        },
        getDetail: (id) async {
          emit(const TermsAndConditionsState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await _profileService.termAndConditionDetail(
            token: token,
            id: id,
          );
          response.when(
            success: (data) => emit(TermsAndConditionsState.success(data)),
            error: (message) => emit(TermsAndConditionsState.failed(message)),
          );
        },
      );
    });
  }
}
