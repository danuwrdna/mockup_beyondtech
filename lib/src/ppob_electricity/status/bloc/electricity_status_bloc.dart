import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_status_event.dart';

part 'electricity_status_state.dart';

part 'electricity_status_bloc.freezed.dart';

class ElectricityStatusBloc
    extends Bloc<ElectricityStatusEvent, ElectricityStatusState> {
  TransactionService transactionService = TransactionService();

  ElectricityStatusBloc() : super(const ElectricityStatusState.initial()) {
    on<ElectricityStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (transactionId) async {
          emit(const ElectricityStatusState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
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
            success: (data) => emit(ElectricityStatusState.success(data)),
            error: (message) => emit(ElectricityStatusState.failed(message)),
          );
        },
      );
    });
  }
}
