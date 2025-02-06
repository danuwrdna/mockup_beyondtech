// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/services/models/profile/term_and_condition_detail/term_and_condition_detail_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'faq_detail_event.dart';

// part 'faq_detail_state.dart';

// part 'faq_detail_bloc.freezed.dart';

// class FaqDetailBloc extends Bloc<FaqDetailEvent, FaqDetailState> {
//   final ProfileService _profileService = ProfileService();

//   FaqDetailBloc() : super(const FaqDetailState.initial()) {
//     on<FaqDetailEvent>((event, emit) async {
//       await event.when(
//         getDetail: (id) async {
//           emit(const FaqDetailState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await _profileService.termAndConditionDetail(
//             token: token,
//             id: id,
//           );
//           response.when(
//             success: (data) => emit(FaqDetailState.success(data)),
//             error: (message) => emit(FaqDetailState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
