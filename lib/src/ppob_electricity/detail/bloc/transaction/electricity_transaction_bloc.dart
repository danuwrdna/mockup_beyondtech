import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_transaction_event.dart';

part 'electricity_transaction_state.dart';

part 'electricity_transaction_bloc.freezed.dart';

class ElectricityTransactionBloc
    extends Bloc<ElectricityTransactionEvent, ElectricityTransactionState> {
  PpobService ppobService = PpobService();

  ElectricityTransactionBloc()
      : super(const ElectricityTransactionState.initial()) {
    on<ElectricityTransactionEvent>((event, emit) async {
      emit(const ElectricityTransactionState.loading());
      await event.when(
        transaction: (packageId, denominationId, productType, costumerNumber,
            paymentCode, pin, isBiometricActive) async {
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
          response.when(
            success: (data) {
              emit(ElectricityTransactionState.transactionSuccess(data));
            },
            error: (message) {
              emit(ElectricityTransactionState.failed(message));
            },
          );
        },
      );
    });
  }
}
