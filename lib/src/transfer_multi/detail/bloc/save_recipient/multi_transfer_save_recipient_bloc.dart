import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
import 'package:bpay_mobile/services/models/profile_transaction/save_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_transfer_save_recipient_event.dart';

part 'multi_transfer_save_recipient_state.dart';

part 'multi_transfer_save_recipient_bloc.freezed.dart';

class MultiTransferSaveRecipientBloc extends Bloc<
    MultiTransferSaveRecipientEvent, MultiTransferSaveRecipientState> {
  ProfileTransactionService profileTransactionService =
      ProfileTransactionService();

  MultiTransferSaveRecipientBloc()
      : super(const MultiTransferSaveRecipientState.initial()) {
    on<MultiTransferSaveRecipientEvent>((event, emit) async {
      await event.when(
        saveRecipient: (bankCode, accountNumber, recipientName) async {
          emit(const MultiTransferSaveRecipientState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await profileTransactionService.saveRecipient(
            token,
            bankCode,
            TransactionType.transferBank,
            accountNumber,
            recipientName,
          );
          response.when(
            success: (data) {
              emit(MultiTransferSaveRecipientState.success(data));
            },
            error: (message) {
              emit(MultiTransferSaveRecipientState.failed(message));
            },
          );
        },
      );
    });
  }
}
