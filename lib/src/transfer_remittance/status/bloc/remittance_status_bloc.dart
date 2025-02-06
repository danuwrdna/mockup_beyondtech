import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:bpay_mobile/src/transfer_remittance/status/model/remittance_transaction_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remittance_status_event.dart';

part 'remittance_status_state.dart';

part 'remittance_status_bloc.freezed.dart';

class RemittanceStatusBloc
    extends Bloc<RemittanceStatusEvent, RemittanceStatusState> {
  TransferSingleService transferSingleService = TransferSingleService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  RemittanceStatusBloc() : super(const RemittanceStatusState.initial()) {
    on<RemittanceStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (transactionId) async {
          emit(const RemittanceStatusState.loading());
          final response =
              await transferSingleService.getRemittanceTransactionDetail(
            token,
            transactionId,
            HistoryBoundaryType.outbound,
            DateTime.now()
                    .subtract(const Duration(hours: 24))
                    .millisecondsSinceEpoch ~/
                1000,
          );
          response.when(
            success: (data) => emit(RemittanceStatusState.success(data)),
            error: (message) => emit(RemittanceStatusState.failed(message)),
          );
        },
      );
    });
  }
}
