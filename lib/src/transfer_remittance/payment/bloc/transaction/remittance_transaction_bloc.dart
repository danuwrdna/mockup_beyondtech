import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/remittance_service.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/transaction/remittance_transaction_response_model.dart';
import 'package:bpay_mobile/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remittance_transaction_event.dart';

part 'remittance_transaction_state.dart';

part 'remittance_transaction_bloc.freezed.dart';

class RemittanceTransactionBloc
    extends Bloc<RemittanceTransactionEvent, RemittanceTransactionState> {
  RemittanceService remittanceService = RemittanceService();
  String token = SharedPreferencesService.getLoginToken() ?? "";
  BiometricsHelper biometricsHelper = BiometricsHelper();

  Future<bool> _getBiometricStatus() async {
    return await biometricsHelper.getBiometricPreferences();
  }

  RemittanceTransactionBloc()
      : super(const RemittanceTransactionState.initial()) {
    on<RemittanceTransactionEvent>((event, emit) async {
      await event.when(
        remittanceTransaction: (
          senderCountryDetail,
          receiverCountryDetail,
          amount,
          serviceOptionCode,
          serviceOptionRoutingCode,
          fields,
          fieldsControllers,
          purposeOfTransaction,
          sourceOfFunds,
          paymentCode,
          pin,
          isBiometricActive,
        ) async {
          emit(const RemittanceTransactionState.loading());
          bool isBiometricActive = await _getBiometricStatus();
          final response = await remittanceService.remittanceTransaction(
            token,
            senderCountryDetail,
            receiverCountryDetail,
            amount,
            serviceOptionCode,
            serviceOptionRoutingCode,
            fields,
            fieldsControllers,
            purposeOfTransaction,
            sourceOfFunds,
            paymentCode,
            pin ?? "",
            isBiometricActive.toString(),
          );
          response.when(
            success: (data) {
              emit(RemittanceTransactionState.success(data));
            },
            error: (message) {
              emit(RemittanceTransactionState.failed(message));
            },
          );
        },
      );
    });
  }
}
