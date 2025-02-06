import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:bpay_mobile/src/transfer_single/status/model/detail_history_transfer_single_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_transfer_status_event.dart';

part 'single_transfer_status_state.dart';

part 'single_transfer_status_bloc.freezed.dart';

class SingleTransferStatusBloc
    extends Bloc<SingleTransferStatusEvent, SingleTransferStatusState> {
  TransferSingleService transferSingleService = TransferSingleService();

  SingleTransferStatusBloc()
      : super(const SingleTransferStatusState.initial()) {
    on<SingleTransferStatusEvent>((event, emit) async {
      await event.when(
        getBankTransferTransactionHistory: (
          String transactionId,
          int lastDate,
        ) async {
          emit(const SingleTransferStatusState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response =
              await transferSingleService.getBankTransferTransactionHistory(
            token,
            transactionId,
            lastDate,
          );
          response.when(
            success: (data) => emit(SingleTransferStatusState
                .getBankTransferTransactionHistorySuccess(data)),
            error: (message) => emit(SingleTransferStatusState.failed(message)),
          );
        },
        getTransactionStatus: (String refId) async {
          emit(const SingleTransferStatusState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService
              .getBankTransferTransactionStatus(token, refId);
          response.when(
            success: (data) => emit(SingleTransferStatusState.success(data)),
            error: (message) => emit(SingleTransferStatusState.failed(message)),
          );
        },
      );
    });
  }
}
