// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/update_recipient_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'remove_recipient_event.dart';

// part 'remove_recipient_state.dart';

// part 'remove_recipient_bloc.freezed.dart';

// class RemoveRecipientBloc
//     extends Bloc<RemoveRecipientEvent, RemoveRecipientState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   RemoveRecipientBloc() : super(const RemoveRecipientState.initial()) {
//     on<RemoveRecipientEvent>((event, emit) async {
//       await event.when(
//         removeRecipient: (recipientId) async {
//           emit(const RemoveRecipientState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.updateRecipient(
//             token,
//             recipientId,
//             "n",
//           );
//           response.when(
//             success: (data) => emit(RemoveRecipientState.success(data)),
//             error: (message) => emit(RemoveRecipientState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
