// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_profile/models/change_profile_picture/change_profile_picture_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'change_profile_picture_event.dart';

// part 'change_profile_picture_state.dart';

// part 'change_profile_picture_bloc.freezed.dart';

// class ChangeProfilePictureBloc
//     extends Bloc<ChangeProfilePictureEvent, ChangeProfilePictureState> {
//   final ProfileService _profileService = ProfileService();

//   ChangeProfilePictureBloc()
//       : super(const ChangeProfilePictureState.initial()) {
//     on<ChangeProfilePictureEvent>((event, emit) async {
//       await event.when(
//         change: (base64Image) async {
//           emit(const ChangeProfilePictureState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await _profileService.changeProfilePicture(
//             token: token,
//             base64Image: base64Image,
//           );
//           response.when(
//             success: (data) => emit(ChangeProfilePictureState.success(data)),
//             error: (message) => emit(ChangeProfilePictureState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
