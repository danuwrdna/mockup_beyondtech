import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_event.dart';

part 'payment_method_state.dart';

part 'payment_method_bloc.freezed.dart';

class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  TransactionService transactionService = TransactionService();

  PaymentMethodBloc() : super(const PaymentMethodState.initial()) {
    on<PaymentMethodEvent>((event, emit) async {
      await event.when(
        getPaymentMethod: (nominal) async {
          emit(const PaymentMethodState.loading());
          String token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transactionService.getPaymentMethodList(
            token,
            nominal,
          );
          response.when(
            success: (data) => emit(PaymentMethodState.success(data)),
            error: (message) => emit(PaymentMethodState.failed(message)),
          );
        },
      );
    });
  }
}
