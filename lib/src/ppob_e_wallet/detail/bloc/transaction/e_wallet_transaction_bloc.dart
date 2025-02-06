import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_wallet_transaction_event.dart';

part 'e_wallet_transaction_state.dart';

part 'e_wallet_transaction_bloc.freezed.dart';

class EWalletTransactionBloc
    extends Bloc<EWalletTransactionEvent, EWalletTransactionState> {
  PpobService ppobService = PpobService();
  BiometricsHelper biometricsHelper = BiometricsHelper();

  Future<bool> _getBiometricStatus() async {
    return await biometricsHelper.getBiometricPreferences();
  }

  EWalletTransactionBloc() : super(const EWalletTransactionState.initial()) {
    on<EWalletTransactionEvent>((event, emit) async {
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
          emit(const EWalletTransactionState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          bool isBiometricActive = await _getBiometricStatus();
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
              emit(EWalletTransactionState.transactionSuccess(data));
            },
            error: (message) {
              emit(EWalletTransactionState.failed(message));
            },
          );
        },
      );
    });
  }
}
