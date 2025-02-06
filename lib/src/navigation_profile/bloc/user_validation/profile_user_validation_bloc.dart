// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_home/models/user_validation_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'profile_user_validation_event.dart';

// part 'profile_user_validation_state.dart';

// part 'profile_user_validation_bloc.freezed.dart';

// class ProfileUserValidationBloc
//     extends Bloc<ProfileUserValidationEvent, ProfileUserValidationState> {
//   final ProfileService profileService = ProfileService();

//   ProfileUserValidationBloc()
//       : super(const ProfileUserValidationState.initial()) {
//     on<ProfileUserValidationEvent>((event, emit) async {
//       await event.when(
//         getUserValidation: () async {
//           emit(const ProfileUserValidationState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getUserValidationStatus(token);
//           response.when(
//             success: (data) {
//               emit(ProfileUserValidationState.success(data));
//             },
//             error: (message) {
//               emit(ProfileUserValidationState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
