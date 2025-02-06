import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_postpaid_transaction_event.dart';
part 'phone_postpaid_transaction_state.dart';
part 'phone_postpaid_transaction_bloc.freezed.dart';

class PhonePostpaidTransactionBloc
    extends Bloc<PhonePostpaidTransactionEvent, PhonePostpaidTransactionState> {
  PpobService ppobService = PpobService();

  PhonePostpaidTransactionBloc()
      : super(const PhonePostpaidTransactionState.initial()) {
    on<PhonePostpaidTransactionEvent>((event, emit) async {
      await event.when(transaction: (
        String packageId,
        String denominationId,
        String productType,
        String costumerNumber,
        String paymentCode,
        String? pin,
        String? isBiometricActive,
      ) async {
        emit(const PhonePostpaidTransactionState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await ppobService.ppobTransaction(
          token: token,
          packageId: packageId,
          denominationId: denominationId,
          productType: productType,
          costumerNumber: costumerNumber,
          paymentCode: paymentCode,
          pin: pin,
          isBiometricValid: isBiometricActive.toString(),
        );
        response.when(success: (data) {
          emit(
            PhonePostpaidTransactionState.transactionPhonePostpaidSuccess(data),
          );
        }, error: (message) {
          emit(
            PhonePostpaidTransactionState.failed(message),
          );
        });
      });
    });
  }
}
