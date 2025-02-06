// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'check_register_event.dart';

// part 'check_register_state.dart';

// part 'check_register_bloc.freezed.dart';

// class CheckRegisterBloc extends Bloc<CheckRegisterEvent, CheckRegisterState> {
//   AuthService authService = AuthService();

//   CheckRegisterBloc() : super(const CheckRegisterState.initial()) {
//     on<CheckRegisterEvent>((event, emit) async {
//       await event.when(
//         onCheck: (phoneNumber) async {
//           emit(const CheckRegisterState.loading());
//           final response =
//               await authService.getIsPhoneNumberRegistered(phoneNumber);
//           response.when(
//             success: (data) {
//               emit(const CheckRegisterState.notRegistered());
//             },
//             error: (message) {
//               if (message.contains("already registered")) {
//                 emit(const CheckRegisterState.registered());
//               } else {
//                 emit(CheckRegisterState.error(message));
//               }
//             },
//           );
//         },
//       );
//     });
//   }
// }
