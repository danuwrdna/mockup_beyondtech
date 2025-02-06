// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/bcare_service.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'bcare_chat_customer_service_event.dart';

// part 'bcare_chat_customer_service_state.dart';

// part 'bcare_chat_customer_service_bloc.freezed.dart';

// class BcareChatCustomerServiceBloc
//     extends Bloc<BcareChatCustomerServiceEvent, BcareChatCustomerServiceState> {
//   BcareService bcareService = BcareService();

//   BcareChatCustomerServiceBloc()
//       : super(const BcareChatCustomerServiceState.initial()) {
//     on<BcareChatCustomerServiceEvent>((event, emit) async {
//       await event.when(
//         getSession: () async {
//           emit(const BcareChatCustomerServiceState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await bcareService.getSession(token);
//           response.when(
//             success: (data) {
//               emit(const BcareChatCustomerServiceState.success());
//             },
//             error: (message) {
//               emit(BcareChatCustomerServiceState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
