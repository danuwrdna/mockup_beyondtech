// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/services/models/profile/term_and_condition/term_and_condition_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'faq_list_event.dart';

// part 'faq_list_state.dart';

// part 'faq_list_bloc.freezed.dart';

// class FaqListBloc extends Bloc<FaqListEvent, FaqListState> {
//   final ProfileService _profileService = ProfileService();

//   FaqListBloc() : super(const FaqListState.initial()) {
//     on<FaqListEvent>((event, emit) async {
//       await event.when(
//         getList: () async {
//           emit(const FaqListState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await _profileService.termAndConditionList(
//             token: token,
//             category: "faq",
//           );
//           response.when(
//             success: (data) => emit(FaqListState.success(data)),
//             error: (message) => emit(FaqListState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
