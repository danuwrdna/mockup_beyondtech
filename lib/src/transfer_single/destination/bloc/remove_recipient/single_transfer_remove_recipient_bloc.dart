// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/update_recipient_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'single_transfer_remove_recipient_event.dart';

// part 'single_transfer_remove_recipient_state.dart';

// part 'single_transfer_remove_recipient_bloc.freezed.dart';

// class SingleTransferRemoveRecipientBloc extends Bloc<
//     SingleTransferRemoveRecipientEvent, SingleTransferRemoveRecipientState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   SingleTransferRemoveRecipientBloc()
//       : super(const SingleTransferRemoveRecipientState.initial()) {
//     on<SingleTransferRemoveRecipientEvent>((event, emit) async {
//       await event.when(
//         removeRecipient: (recipientId) async {
//           emit(const SingleTransferRemoveRecipientState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.updateRecipient(
//             token,
//             recipientId,
//             "n",
//           );
//           response.when(
//             success: (data) {
//               emit(SingleTransferRemoveRecipientState.success(data));
//             },
//             error: (message) {
//               emit(SingleTransferRemoveRecipientState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
