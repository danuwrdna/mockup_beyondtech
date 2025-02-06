import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_service.dart';
import 'package:bpay_mobile/widgets/social_media_widget/model/helpdesk_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'helpdesk_event.dart';

part 'helpdesk_state.dart';

part 'helpdesk_bloc.freezed.dart';

class HelpdeskBloc extends Bloc<HelpdeskEvent, HelpdeskState> {
  final ProfileService _profileService = ProfileService();

  HelpdeskBloc() : super(const HelpdeskState.initial()) {
    on<HelpdeskEvent>((event, emit) async {
      await event.when(
        getList: () async {
          emit(const HelpdeskState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await _profileService.getHelpdeskList(token: token);
          response.when(
            success: (data) => emit(HelpdeskState.success(data)),
            error: (message) => emit(HelpdeskState.failed(message)),
          );
        },
      );
    });
  }
}
