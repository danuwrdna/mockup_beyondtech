import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
import 'package:bpay_mobile/services/models/profile_transaction/save_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_transfer_save_recipient_event.dart';

part 'single_transfer_save_recipient_state.dart';

part 'single_transfer_save_recipient_bloc.freezed.dart';

class SingleTransferSaveRecipientBloc extends Bloc<
    SingleTransferSaveRecipientEvent, SingleTransferSaveRecipientState> {
  ProfileTransactionService profileTransactionService =
      ProfileTransactionService();

  SingleTransferSaveRecipientBloc()
      : super(const SingleTransferSaveRecipientState.initial()) {
    on<SingleTransferSaveRecipientEvent>((event, emit) async {
      await event.when(
        saveRecipient: (
          bankCode,
          transferType,
          accountNumber,
          recipientName,
        ) async {
          emit(const SingleTransferSaveRecipientState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await profileTransactionService.saveRecipient(
            token,
            bankCode,
            transferType,
            accountNumber,
            recipientName,
          );
          response.when(
            success: (data) {
              emit(SingleTransferSaveRecipientState.success(data));
            },
            error: (message) {
              emit(SingleTransferSaveRecipientState.failed(message));
            },
          );
        },
      );
    });
  }
}
