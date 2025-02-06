import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_transfer_verify_recipient_event.dart';

part 'multi_transfer_verify_recipient_state.dart';

part 'multi_transfer_verify_recipient_bloc.freezed.dart';

class MultiTransferVerifyRecipientBloc extends Bloc<
    MultiTransferVerifyRecipientEvent, MultiTransferVerifyRecipientState> {
  TransferSingleService transferSingleService = TransferSingleService();

  MultiTransferVerifyRecipientBloc()
      : super(const MultiTransferVerifyRecipientState.initial()) {
    on<MultiTransferVerifyRecipientEvent>((event, emit) async {
      await event.when(
        verifyRecipient: (bankCode, accountNumber) async {
          emit(const MultiTransferVerifyRecipientState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService.verifyRecipient(
            token,
            bankCode,
            accountNumber,
            TransactionType.transferBank,
          );
          response.when(
            success: (data) {
              emit(MultiTransferVerifyRecipientState.success(data));
            },
            error: (message) {
              emit(MultiTransferVerifyRecipientState.failed(message));
            },
          );
        },
      );
    });
  }
}
