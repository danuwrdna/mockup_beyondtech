import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/recipient_payload_item_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/transfer_single_detail_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_transfer_detail_event.dart';

part 'multi_transfer_detail_state.dart';

part 'multi_transfer_detail_bloc.freezed.dart';

class MultiTransferDetailBloc
    extends Bloc<MultiTransferDetailEvent, MultiTransferDetailState> {
  TransferSingleService transferSingleService = TransferSingleService();

  MultiTransferDetailBloc() : super(const MultiTransferDetailState.initial()) {
    on<MultiTransferDetailEvent>((event, emit) async {
      await event.when(
        getTransferDetail: (paymentCode, recipients) async {
          emit(const MultiTransferDetailState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService.getMultiTransferDetail(
            token,
            paymentCode,
            TransactionType.transferBank,
            recipients,
          );
          response.when(
            success: (data) => emit(MultiTransferDetailState.success(data)),
            error: (message) => emit(MultiTransferDetailState.failed(message)),
          );
        },
      );
    });
  }
}
