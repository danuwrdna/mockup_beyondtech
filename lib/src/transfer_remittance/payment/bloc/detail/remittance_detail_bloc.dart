import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/remittance_service.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail/country_detail_response_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/country_detail_model.dart';
import 'package:bpay_mobile/src/transfer_remittance/payment/model/detail/remittance_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remittance_detail_event.dart';

part 'remittance_detail_state.dart';

part 'remittance_detail_bloc.freezed.dart';

class RemittanceDetailBloc
    extends Bloc<RemittanceDetailEvent, RemittanceDetailState> {
  RemittanceService remittanceService = RemittanceService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  RemittanceDetailBloc() : super(const RemittanceDetailState.initial()) {
    on<RemittanceDetailEvent>((event, emit) async {
      await event.when(
        getSenderCountryDetail: (senderCountryCodeIso3) async {
          emit(const RemittanceDetailState.loading());
          final response = await remittanceService.getCountryDetail(
            token,
            senderCountryCodeIso3,
          );
          response.when(
            success: (data) {
              emit(RemittanceDetailState.senderSuccess(data));
            },
            error: (message) {
              emit(RemittanceDetailState.failed(message));
            },
          );
        },
        getReceiverCountryDetail: (receiverCountryCodeIso3) async {
          emit(const RemittanceDetailState.loading());
          final response = await remittanceService.getCountryDetail(
            token,
            receiverCountryCodeIso3,
          );
          response.when(
            success: (data) {
              emit(RemittanceDetailState.receiverSuccess(data));
            },
            error: (message) {
              emit(RemittanceDetailState.failed(message));
            },
          );
        },
        getRemittanceDetail: (
          senderCountryDetail,
          receiverCountryDetail,
          amount,
          serviceOptionCode,
          serviceOptionRoutingCode,
        ) async {
          emit(const RemittanceDetailState.loading());
          final response = await remittanceService.getTransactionDetail(
            token,
            senderCountryDetail,
            receiverCountryDetail,
            amount,
            serviceOptionCode,
            serviceOptionRoutingCode,
          );
          response.when(
            success: (data) {
              emit(RemittanceDetailState.detailSuccess(data));
            },
            error: (message) {
              emit(RemittanceDetailState.failed(message));
            },
          );
        },
      );
    });
  }
}
