// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/update_recipient_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'multi_transfer_remove_recipient_event.dart';

// part 'multi_transfer_remove_recipient_state.dart';

// part 'multi_transfer_remove_recipient_bloc.freezed.dart';

// class MultiTransferRemoveRecipientBloc extends Bloc<
//     MultiTransferRemoveRecipientEvent, MultiTransferRemoveRecipientState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   MultiTransferRemoveRecipientBloc()
//       : super(const MultiTransferRemoveRecipientState.initial()) {
//     on<MultiTransferRemoveRecipientEvent>((event, emit) async {
//       await event.when(
//         removeRecipient: (recipientId) async {
//           emit(const MultiTransferRemoveRecipientState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.updateRecipient(
//             token,
//             recipientId,
//             "n",
//           );
//           response.when(
//             success: (data) {
//               emit(MultiTransferRemoveRecipientState.success(data));
//             },
//             error: (message) {
//               emit(MultiTransferRemoveRecipientState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
