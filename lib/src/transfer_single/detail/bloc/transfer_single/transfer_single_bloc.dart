import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_single_event.dart';

part 'transfer_single_state.dart';

part 'transfer_single_bloc.freezed.dart';

class TransferSingleBloc
    extends Bloc<TransferSingleEvent, TransferSingleState> {
  TransferSingleService transferSingleService = TransferSingleService();
  BiometricsHelper biometricsHelper = BiometricsHelper();

  Future<bool> _getBiometricStatus() async {
    return await biometricsHelper.getBiometricPreferences();
  }

  TransferSingleBloc() : super(const TransferSingleState.initial()) {
    on<TransferSingleEvent>((event, emit) async {
      await event.when(
        transferSingle: (
          paymentCode,
          pin,
          destinationPayload,
          isBiometricValid,
        ) async {
          emit(const TransferSingleState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          bool isBiometricActive = await _getBiometricStatus();
          final response =
              await transferSingleService.transferSingleBankAccount(
            token,
            paymentCode,
            pin,
            destinationPayload,
            isBiometricActive.toString(),
          );
          response.when(
            success: (data) => emit(TransferSingleState.success(data)),
            error: (message) => emit(TransferSingleState.failed(message)),
          );
        },
      );
    });
  }
}
