// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
// import 'package:bpay_mobile/services/models/transfer_single/transaction_status_enum.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'get_recent_transaction_event.dart';

// part 'get_recent_transaction_state.dart';

// part 'get_recent_transaction_bloc.freezed.dart';

// class GetRecentTransactionBloc
//     extends Bloc<GetRecentTransactionEvent, GetRecentTransactionState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   GetRecentTransactionBloc()
//       : super(const GetRecentTransactionState.initial()) {
//     on<GetRecentTransactionEvent>((event, emit) async {
//       await event.when(
//         getRecentTransactionHistory: () async {
//           emit(const GetRecentTransactionState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transferSingleService.getSingleTransferHistory(
//             token,
//             HistoryBoundaryType.outbound,
//             TransactionStatus.success,
//             DateTime.now()
//                     .subtract(const Duration(days: 1))
//                     .millisecondsSinceEpoch ~/
//                 1000,
//           );
//           response.when(
//             success: (data) => emit(GetRecentTransactionState.success(data)),
//             error: (message) => emit(GetRecentTransactionState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
