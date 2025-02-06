import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/src/payment_method_bottom_sheet/models/payment_method_list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remittance_payment_method_event.dart';

part 'remittance_payment_method_state.dart';

part 'remittance_payment_method_bloc.freezed.dart';

class RemittancePaymentMethodBloc
    extends Bloc<RemittancePaymentMethodEvent, RemittancePaymentMethodState> {
  TransactionService transactionService = TransactionService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  RemittancePaymentMethodBloc()
      : super(const RemittancePaymentMethodState.initial()) {
    on<RemittancePaymentMethodEvent>((event, emit) async {
      await event.when(
        getPaymentList: (nominal) async {
          emit(const RemittancePaymentMethodState.loading());
          final response = await transactionService.getPaymentMethodList(
            token,
            nominal,
          );
          response.when(
            success: (data) {
              emit(RemittancePaymentMethodState.success(data));
            },
            error: (message) {
              emit(RemittancePaymentMethodState.failed(message));
            },
          );
        },
      );
    });
  }
}
