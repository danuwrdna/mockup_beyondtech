import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_transfer_balance_event.dart';

part 'detail_transfer_balance_state.dart';

part 'detail_transfer_balance_bloc.freezed.dart';

class DetailTransferBalanceBloc
    extends Bloc<DetailTransferBalanceEvent, DetailTransferBalanceState> {
  TransferSingleService transferSingleService = TransferSingleService();

  DetailTransferBalanceBloc()
      : super(const DetailTransferBalanceState.initial()) {
    on<DetailTransferBalanceEvent>((event, emit) async {
      await event.when(
        getTransferBalanceDetail: (
          paymentCode,
          recipientPayload,
        ) async {
          emit(const DetailTransferBalanceState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService.getSingleTransferDetail(
            token,
            paymentCode,
            TransactionType.transferBeyond,
            recipientPayload,
          );
          response.when(
            success: (data) {
              emit(DetailTransferBalanceState.success(data));
            },
            error: (message) {
              emit(DetailTransferBalanceState.failed(message));
            },
          );
        },
      );
    });
  }
}
