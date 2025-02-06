// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'single_transfer_recipient_list_event.dart';

// part 'single_transfer_recipient_list_state.dart';

// part 'single_transfer_recipient_list_bloc.freezed.dart';

// class SingleTransferRecipientListBloc extends Bloc<
//     SingleTransferRecipientListEvent, SingleTransferRecipientListState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   SingleTransferRecipientListBloc()
//       : super(const SingleTransferRecipientListState.initial()) {
//     on<SingleTransferRecipientListEvent>((event, emit) async {
//       await event.when(
//         getRecipientList: () async {
//           emit(const SingleTransferRecipientListState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.getRecipientList(
//             token,
//           );
//           response.when(
//             success: (data) {
//               emit(SingleTransferRecipientListState.success(data));
//             },
//             error: (message) {
//               emit(SingleTransferRecipientListState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
