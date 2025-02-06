import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_single_detail_event.dart';

part 'transfer_single_detail_state.dart';

part 'transfer_single_detail_bloc.freezed.dart';

class TransferSingleDetailBloc
    extends Bloc<TransferSingleDetailEvent, TransferSingleDetailState> {
  TransferSingleService transferSingleService = TransferSingleService();

  TransferSingleDetailBloc()
      : super(const TransferSingleDetailState.initial()) {
    on<TransferSingleDetailEvent>((event, emit) async {
      await event.when(
        getTransferDetail: (paymentCode, recipientPayload) async {
          emit(const TransferSingleDetailState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService.getSingleTransferDetail(
            token,
            paymentCode,
            TransactionType.transferBank,
            recipientPayload,
          );
          response.when(
            success: (data) => emit(TransferSingleDetailState.success(data)),
            error: (message) => emit(TransferSingleDetailState.failed(message)),
          );
        },
      );
    });
  }
}
