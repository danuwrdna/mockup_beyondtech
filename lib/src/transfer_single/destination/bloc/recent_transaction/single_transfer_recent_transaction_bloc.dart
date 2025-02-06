// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'single_transfer_recent_transaction_event.dart';

// part 'single_transfer_recent_transaction_state.dart';

// part 'single_transfer_recent_transaction_bloc.freezed.dart';

// class SingleTransferRecentTransactionBloc extends Bloc<
//     SingleTransferRecentTransactionEvent,
//     SingleTransferRecentTransactionState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   SingleTransferRecentTransactionBloc()
//       : super(const SingleTransferRecentTransactionState.initial()) {
//     on<SingleTransferRecentTransactionEvent>((event, emit) async {
//       await event.when(
//         getSingleTransferHistory: () async {
//           emit(const SingleTransferRecentTransactionState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transferSingleService.getSingleTransferHistory(
//             token,
//             HistoryBoundaryType.outbound,
//             null,
//             DateTime.now()
//                     .subtract(const Duration(days: 1))
//                     .millisecondsSinceEpoch ~/
//                 1000,
//           );
//           response.when(
//             success: (data) {
//               emit(SingleTransferRecentTransactionState.success(data));
//             },
//             error: (message) {
//               emit(SingleTransferRecentTransactionState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
