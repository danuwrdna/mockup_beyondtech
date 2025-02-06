// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_profile/models/get_profile/get_profile_models.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'profile_event.dart';

// part 'profile_state.dart';

// part 'profile_bloc.freezed.dart';

// class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
//   ProfileService profileService = ProfileService();

//   ProfileBloc() : super(const ProfileState.initial()) {
//     on<ProfileEvent>((event, emit) async {
//       await event.when(
//         getProfile: () async {
//           emit(const ProfileState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getProfileData(token);
//           response.when(
//             success: (data) => emit(ProfileState.success(data)),
//             error: (message) => emit(ProfileState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
