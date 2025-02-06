import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/src/transfer_balance/detail/models/transfer_balance_models.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_balance_event.dart';

part 'transfer_balance_state.dart';

part 'transfer_balance_bloc.freezed.dart';

class TransferBalanceBloc
    extends Bloc<TransferBalanceEvent, TransferBalanceState> {
  TransferSingleService transferSingleService = TransferSingleService();
  BiometricsHelper biometricsHelper = BiometricsHelper();

  Future<bool> _getBiometricStatus() async {
    return await biometricsHelper.getBiometricPreferences();
  }

  TransferBalanceBloc() : super(const TransferBalanceState.initial()) {
    on<TransferBalanceEvent>((event, emit) async {
      await event.when(
        transferBalance: (
          nominal,
          pin,
          notes,
          recipientPhoneNumber,
          isBiometricValid,
        ) async {
          emit(const TransferBalanceState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          bool isBiometricActive = await _getBiometricStatus();
          final response = await transferSingleService.transferBeyond(
            token,
            nominal,
            pin ?? "",
            notes!,
            recipientPhoneNumber!,
            isBiometricActive.toString(),
          );
          response.when(
            success: (data) => emit(TransferBalanceState.success(data)),
            error: (message) => emit(TransferBalanceState.failed(message)),
          );
        },
      );
    });
  }
}
