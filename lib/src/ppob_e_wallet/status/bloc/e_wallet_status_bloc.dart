import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_transaction_detail/ppob_transaction_detail_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_boundary_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_wallet_status_event.dart';

part 'e_wallet_status_state.dart';

part 'e_wallet_status_bloc.freezed.dart';

class EWalletStatusBloc extends Bloc<EWalletStatusEvent, EWalletStatusState> {
  TransactionService transactionService = TransactionService();
  String token = SharedPreferencesService.getLoginToken() ?? "";

  EWalletStatusBloc() : super(const EWalletStatusState.initial()) {
    on<EWalletStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (transactionId) async {
          emit(const EWalletStatusState.loading());
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
            success: (data) => emit(EWalletStatusState.success(data)),
            error: (message) => emit(EWalletStatusState.failed(message)),
          );
        },
      );
    });
  }
}
