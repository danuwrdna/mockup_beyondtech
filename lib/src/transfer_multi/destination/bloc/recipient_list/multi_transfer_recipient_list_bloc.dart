// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'multi_transfer_recipient_list_event.dart';

// part 'multi_transfer_recipient_list_state.dart';

// part 'multi_transfer_recipient_list_bloc.freezed.dart';

// class MultiTransferRecipientListBloc extends Bloc<
//     MultiTransferRecipientListEvent, MultiTransferRecipientListState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   MultiTransferRecipientListBloc()
//       : super(const MultiTransferRecipientListState.initial()) {
//     on<MultiTransferRecipientListEvent>((event, emit) async {
//       await event.when(
//         getRecipientList: () async {
//           emit(const MultiTransferRecipientListState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.getRecipientList(
//             token,
//           );
//           response.when(
//             success: (data) {
//               emit(MultiTransferRecipientListState.success(data));
//             },
//             error: (message) {
//               emit(MultiTransferRecipientListState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
