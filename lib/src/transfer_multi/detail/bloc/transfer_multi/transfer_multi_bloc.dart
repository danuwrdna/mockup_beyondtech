import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_multi_event.dart';

part 'transfer_multi_state.dart';

part 'transfer_multi_bloc.freezed.dart';

class TransferMultiBloc extends Bloc<TransferMultiEvent, TransferMultiState> {
  TransferSingleService transferSingleService = TransferSingleService();
  BiometricsHelper biometricsHelper = BiometricsHelper();

  Future<bool> _getBiometricStatus() async {
    return await biometricsHelper.getBiometricPreferences();
  }

  TransferMultiBloc() : super(const TransferMultiState.initial()) {
    on<TransferMultiEvent>((event, emit) async {
      await event.when(
        transferMulti: (
          paymentCode,
          pin,
          destinations,
          isBiometricValid,
        ) async {
          emit(const TransferMultiState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          bool isBiometricActive = await _getBiometricStatus();
          final response = await transferSingleService.transferMultiBankAccount(
            token,
            paymentCode,
            pin,
            destinations,
            isBiometricActive.toString(),
          );
          response.when(
            success: (data) => emit(TransferMultiState.success(data)),
            error: (message) => emit(TransferMultiState.failed(message)),
          );
        },
      );
    });
  }
}
