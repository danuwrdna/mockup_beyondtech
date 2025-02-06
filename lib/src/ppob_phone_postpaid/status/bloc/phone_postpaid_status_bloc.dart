import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_postpaid_status_event.dart';
part 'phone_postpaid_status_state.dart';
part 'phone_postpaid_status_bloc.freezed.dart';

class PhonePostpaidStatusBloc
    extends Bloc<PhonePostpaidStatusEvent, PhonePostpaidStatusState> {
  TransactionService transactionService = TransactionService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  PhonePostpaidStatusBloc() : super(const PhonePostpaidStatusState.initial()) {
    on<PhonePostpaidStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (transactionId) async {
          emit(const PhonePostpaidStatusState.loading());
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
            success: (data) {
              emit(PhonePostpaidStatusState.success(data));
            },
            error: (message) {
              emit(PhonePostpaidStatusState.failed(message));
            },
          );
        },
      );
    });
  }
}
