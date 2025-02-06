// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_register/create_account/models/email_username_existence_enum.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_email_username_event.dart';

// part 'check_email_username_state.dart';

// part 'check_email_username_bloc.freezed.dart';

// class CheckEmailUsernameBloc
//     extends Bloc<CheckEmailUsernameEvent, CheckEmailUsernameState> {
//   AuthService authService = AuthService();

//   CheckEmailUsernameBloc() : super(const CheckEmailUsernameState.initial()) {
//     on<CheckEmailUsernameEvent>((event, emit) async {
//       await event.when(
//         checkEmailUsername: (email, username) async {
//           emit(const CheckEmailUsernameState.loading());
//           final response =
//               await authService.checkEmailUsername(email, username);
//           response.when(
//             success: (data) => emit(const CheckEmailUsernameState.available()),
//             error: (message) {
//               if (message.contains("email") && message.contains("username")) {
//                 emit(
//                   const CheckEmailUsernameState.notAvailable(
//                     EmailUsernameExistence.emailAndUsername,
//                   ),
//                 );
//               } else if (message.contains("email")) {
//                 emit(
//                   const CheckEmailUsernameState.notAvailable(
//                     EmailUsernameExistence.email,
//                   ),
//                 );
//               } else if (message.contains("username")) {
//                 emit(
//                   const CheckEmailUsernameState.notAvailable(
//                     EmailUsernameExistence.username,
//                   ),
//                 );
//               } else {
//                 emit(CheckEmailUsernameState.error(message));
//               }
//             },
//           );
//         },
//       );
//     });
//   }
// }
