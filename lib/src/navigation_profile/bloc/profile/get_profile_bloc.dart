// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_profile/models/get_profile/get_profile_models.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'get_profile_event.dart';

// part 'get_profile_state.dart';

// part 'get_profile_bloc.freezed.dart';

// class GetProfileBloc extends Bloc<GetProfileEvent, GetProfileState> {
//   ProfileService profileService = ProfileService();

//   GetProfileBloc() : super(const GetProfileState.initial()) {
//     on<GetProfileEvent>((event, emit) async {
//       await event.when(
//         getProfileData: () async {
//           emit(const GetProfileState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getProfileData(token);
//           response.when(
//             success: (data) => emit(GetProfileState.success(data)),
//             error: (message) => emit(GetProfileState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
