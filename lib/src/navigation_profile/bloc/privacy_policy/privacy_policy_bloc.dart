import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_service.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition/term_and_condition_response_model.dart';
import 'package:bpay_mobile/services/models/profile/term_and_condition_detail/term_and_condition_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_policy_event.dart';

part 'privacy_policy_state.dart';

part 'privacy_policy_bloc.freezed.dart';

class PrivacyPolicyBloc extends Bloc<PrivacyPolicyEvent, PrivacyPolicyState> {
  final ProfileService _profileService = ProfileService();

  PrivacyPolicyBloc() : super(const PrivacyPolicyState.initial()) {
    on<PrivacyPolicyEvent>((event, emit) async {
      await event.when(
        getList: () async {
          emit(const PrivacyPolicyState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await _profileService.termAndConditionList(
            token: token,
            category: "privacy policy",
          );
          response.when(
            success: (data) => emit(PrivacyPolicyState.successList(data)),
            error: (message) => emit(PrivacyPolicyState.failed(message)),
          );
        },
        getDetail: (id) async {
          emit(const PrivacyPolicyState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await _profileService.termAndConditionDetail(
            token: token,
            id: id,
          );
          response.when(
            success: (data) => emit(PrivacyPolicyState.success(data)),
            error: (message) => emit(PrivacyPolicyState.failed(message)),
          );
        },
      );
    });
  }
}
