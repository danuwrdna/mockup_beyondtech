// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_profile/models/get_user/get_user_referral_models.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'get_user_referral_event.dart';

// part 'get_user_referral_state.dart';

// part 'get_user_referral_bloc.freezed.dart';

// class GetUserReferralBloc
//     extends Bloc<GetUserReferralEvent, GetUserReferralState> {
//   ProfileService profileService = ProfileService();

//   GetUserReferralBloc() : super(const GetUserReferralState.initial()) {
//     on<GetUserReferralEvent>((event, emit) async {
//       await event.when(
//         getUserReferral: () async {
//           emit(const GetUserReferralState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getReferral(token);
//           response.when(
//             success: (data) => emit(GetUserReferralState.success(data)),
//             error: (message) => emit(GetUserReferralState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
