// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transaction_service.dart';
// import 'package:bpay_mobile/src/balance_top_up/models/balance_top_up_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'balance_top_up_event.dart';

// part 'balance_top_up_state.dart';

// part 'balance_top_up_bloc.freezed.dart';

// class BalanceTopUpBloc extends Bloc<BalanceTopUpEvent, BalanceTopUpState> {
//   TransactionService transactionService = TransactionService();

//   BalanceTopUpBloc() : super(const BalanceTopUpState.initial()) {
//     on<BalanceTopUpEvent>((event, emit) async {
//       await event.when(
//         getBalanceTopUp: (nominal, paymentMethodCode) async {
//           emit(const BalanceTopUpState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transactionService.getBalanceTopUp(
//             token,
//             nominal,
//             paymentMethodCode,
//           );
//           response.when(
//             success: (data) => emit(BalanceTopUpState.success(data)),
//             error: (message) => emit(BalanceTopUpState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
