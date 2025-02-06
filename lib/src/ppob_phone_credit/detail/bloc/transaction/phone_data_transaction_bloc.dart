import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_data_transaction_event.dart';

part 'phone_data_transaction_state.dart';

part 'phone_data_transaction_bloc.freezed.dart';

class PhoneDataTransactionBloc
    extends Bloc<PhoneDataTransactionEvent, PhoneDataTransactionState> {
  PpobService ppobService = PpobService();

  PhoneDataTransactionBloc()
      : super(const PhoneDataTransactionState.initial()) {
    on<PhoneDataTransactionEvent>((event, emit) async {
      await event.when(
        transaction: (
          packageId,
          denominationId,
          productType,
          costumerNumber,
          paymentCode,
          pin,
          isBiometricActive,
        ) async {
          emit(const PhoneDataTransactionState.loading());
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
            success: (data) => emit(PhoneDataTransactionState.success(data)),
            error: (message) => emit(PhoneDataTransactionState.failed(message)),
          );
        },
      );
    });
  }
}
