// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transaction_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
// import 'package:bpay_mobile/src/balance_top_up/models/transaction_checkout_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'transaction_checkout_balance_event.dart';

// part 'transaction_checkout_balance_state.dart';

// part 'transaction_checkout_balance_bloc.freezed.dart';

// class TransactionCheckoutBalanceBloc extends Bloc<
//     TransactionCheckoutBalanceEvent, TransactionCheckoutBalanceState> {
//   TransactionService transactionService = TransactionService();

//   TransactionCheckoutBalanceBloc()
//       : super(const TransactionCheckoutBalanceState.initial()) {
//     on<TransactionCheckoutBalanceEvent>((event, emit) async {
//       await event.when(
//         getTransactionCheckout: (paymentChannelCode, nominal) async {
//           emit(const TransactionCheckoutBalanceState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transactionService.getTransactionCheckout(
//             token,
//             paymentChannelCode,
//             TransactionType.ppob,
//             nominal,
//           );
//           response.when(
//             success: (data) {
//               emit(TransactionCheckoutBalanceState.success(data));
//             },
//             error: (message) {
//               emit(TransactionCheckoutBalanceState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
