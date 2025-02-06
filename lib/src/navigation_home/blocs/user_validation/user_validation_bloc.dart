// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_home/models/user_validation_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user_validation_event.dart';

// part 'user_validation_state.dart';

// part 'user_validation_bloc.freezed.dart';

// class UserValidationBloc
//     extends Bloc<UserValidationEvent, UserValidationState> {
//   ProfileService profileService = ProfileService();

//   UserValidationBloc() : super(const UserValidationState.initial()) {
//     on<UserValidationEvent>((event, emit) async {
//       await event.when(
//         getUserValidationStatus: () async {
//           emit(const UserValidationState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getUserValidationStatus(token);
//           response.when(
//             success: (data) => emit(UserValidationState.success(data)),
//             error: (message) => emit(UserValidationState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
