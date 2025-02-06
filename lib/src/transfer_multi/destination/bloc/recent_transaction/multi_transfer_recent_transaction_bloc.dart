// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'multi_transfer_recent_transaction_event.dart';

// part 'multi_transfer_recent_transaction_state.dart';

// part 'multi_transfer_recent_transaction_bloc.freezed.dart';

// class MultiTransferRecentTransactionBloc extends Bloc<
//     MultiTransferRecentTransactionEvent, MultiTransferRecentTransactionState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   MultiTransferRecentTransactionBloc()
//       : super(const MultiTransferRecentTransactionState.initial()) {
//     on<MultiTransferRecentTransactionEvent>((event, emit) async {
//       await event.when(
//         getMultiTransferHistory: () async {
//           emit(const MultiTransferRecentTransactionState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
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
//               emit(MultiTransferRecentTransactionState.success(data));
//             },
//             error: (message) {
//               emit(MultiTransferRecentTransactionState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
