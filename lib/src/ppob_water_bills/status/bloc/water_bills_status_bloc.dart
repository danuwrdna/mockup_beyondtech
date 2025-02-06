import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_bills_status_event.dart';
part 'water_bills_status_state.dart';
part 'water_bills_status_bloc.freezed.dart';

class WaterBillsStatusBloc
    extends Bloc<WaterBillsStatusEvent, WaterBillsStatusState> {
  TransactionService transactionService = TransactionService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  WaterBillsStatusBloc() : super(const WaterBillsStatusState.initial()) {
    on<WaterBillsStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (transactionId) async {
        emit(const WaterBillsStatusState.loading());
        final response = await transactionService.getPpobTransactionDetail(
          token,
          transactionId,
          HistoryBoundaryType.outbound,
          DateTime.now()
                  .subtract(const Duration(hours: 24))
                  .millisecondsSinceEpoch ~/
              1000,
        );
        response.when(
          success: (data) => emit(WaterBillsStatusState.success(data)),
          error: (message) {
            emit(WaterBillsStatusState.failed(message));
          },
        );
      });
    });
  }
}
