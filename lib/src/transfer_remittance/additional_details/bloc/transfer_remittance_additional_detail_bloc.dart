import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/remittance_service.dart';
import 'package:bpay_mobile/src/transfer_remittance/additional_details/models/transfer_remittance_additional_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_remittance_additional_detail_event.dart';
part 'transfer_remittance_additional_detail_state.dart';
part 'transfer_remittance_additional_detail_bloc.freezed.dart';

class TransferRemittanceAdditionalDetailBloc extends Bloc<
    TransferRemittanceAdditionalDetailEvent,
    TransferRemittanceAdditionalDetailState> {
  TransferRemittanceAdditionalDetailBloc() : super(_Initial()) {
    RemittanceService remittanceService = RemittanceService();
    String token = SharedPreferencesService.getLoginToken() ?? "";

    on<TransferRemittanceAdditionalDetailEvent>((event, emit) async {
      await event.when(getEnumeration: (destination_country_code) async {
        emit(const TransferRemittanceAdditionalDetailState.loading());
        final response = await remittanceService.getEnumeration(
            token, destination_country_code);
        response.when(
          success: (data) =>
              emit(TransferRemittanceAdditionalDetailState.success(data)),
          error: (message) =>
              emit(TransferRemittanceAdditionalDetailState.failed(message)),
        );
      });
    });
  }
}
