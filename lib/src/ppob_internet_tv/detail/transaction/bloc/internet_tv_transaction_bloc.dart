import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/transaction/ppob_transaction_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_tv_transaction_event.dart';
part 'internet_tv_transaction_state.dart';
part 'internet_tv_transaction_bloc.freezed.dart';

class InternetTvTransactionBloc
    extends Bloc<InternetTvTransactionEvent, InternetTvTransactionState> {
  PpobService ppobService = PpobService();

  InternetTvTransactionBloc()
      : super(const InternetTvTransactionState.initial()) {
    on<InternetTvTransactionEvent>((event, emit) async {
      await event.when(transaction: (
        String packageId,
        String denominationId,
        String productType,
        String costumerNumber,
        String paymentCode,
        String? pin,
        String? isBiometricActive,
      ) async {
        emit(const InternetTvTransactionState.loading());
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
            InternetTvTransactionState.transactionInternetTvSuccess(data),
          );
        }, error: (message) {
          emit(
            InternetTvTransactionState.failed(message),
          );
        });
      });
    });
  }
}
