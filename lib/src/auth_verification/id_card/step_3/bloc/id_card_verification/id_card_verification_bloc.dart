// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_2/models/id_card_verification_data_model.dart';
// import 'package:bpay_mobile/src/auth_verification/id_card/step_3/models/id_card_verification_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'id_card_verification_event.dart';

// part 'id_card_verification_state.dart';

// part 'id_card_verification_bloc.freezed.dart';

// class IdCardVerificationBloc
//     extends Bloc<IdCardVerificationEvent, IdCardVerificationState> {
//   AuthService authService = AuthService();

//   IdCardVerificationBloc() : super(const IdCardVerificationState.initial()) {
//     on<IdCardVerificationEvent>((event, emit) async {
//       await event.when(
//         idCardVerification: (
//           phoneNumber,
//           data,
//           idCardImage,
//           idCardSelfieImage,
//         ) async {
//           emit(const IdCardVerificationState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await authService.idCardVerification(
//             phoneNumber,
//             token,
//             data,
//             idCardImage,
//             idCardSelfieImage,
//           );
//           response.when(
//             success: (data) => emit(IdCardVerificationState.success(data)),
//             error: (message) => emit(IdCardVerificationState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
