import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_bills_transaction_event.dart';
part 'water_bills_transaction_state.dart';
part 'water_bills_transaction_bloc.freezed.dart';

class WaterBillsTransactionBloc
    extends Bloc<WaterBillsTransactionEvent, WaterBillsTransactionState> {
  PpobService ppobService = PpobService();

  WaterBillsTransactionBloc()
      : super(const WaterBillsTransactionState.initial()) {
    on<WaterBillsTransactionEvent>(
      (event, emit) async {
        await event.when(
          transaction: (
            String packageId,
            String denominationId,
            String productType,
            String costumerNumber,
            String paymentCode,
            String? pin,
            String? isBiometricActive,
          ) async {
            emit(const WaterBillsTransactionState.loading());
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
                emit(WaterBillsTransactionState.transactionWaterBillsSuccess(
                    data));
              },
              error: (message) {
                emit(WaterBillsTransactionState.failed(message));
              },
            );
          },
        );
      },
    );
  }
}
