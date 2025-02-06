// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
// import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'transaction_history_event.dart';

// part 'transaction_history_state.dart';

// part 'transaction_history_bloc.freezed.dart';

// class TransactionHistoryBloc
//     extends Bloc<TransactionHistoryEvent, TransactionHistoryState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   TransactionHistoryBloc() : super(const TransactionHistoryState.initial()) {
//     on<TransactionHistoryEvent>((event, emit) async {
//       await event.when(
//         getTransactionHistory: (boundaryType, limit) async {
//           emit(const TransactionHistoryState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transferSingleService.getHistoryTransaction(
//             token,
//             boundaryType,
//             limit,
//           );
//           response.when(
//             success: (data) => emit(TransactionHistoryState.success(data)),
//             error: (message) => emit(TransactionHistoryState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
