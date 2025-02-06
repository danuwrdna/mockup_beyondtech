import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
import 'package:bpay_mobile/services/models/profile_transaction/save_recipient_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_recipient_event.dart';

part 'save_recipient_state.dart';

part 'save_recipient_bloc.freezed.dart';

class SaveRecipientBloc extends Bloc<SaveRecipientEvent, SaveRecipientState> {
  ProfileTransactionService profileTransactionService =
      ProfileTransactionService();

  SaveRecipientBloc() : super(const SaveRecipientState.initial()) {
    on<SaveRecipientEvent>((event, emit) async {
      await event.when(
        saveBalanceRecipient: (
          transferType,
          accountNumber,
          recipientName,
        ) async {
          emit(const SaveRecipientState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await profileTransactionService.saveBalanceRecipient(
            token,
            TransactionType.transferBeyond,
            accountNumber,
            recipientName,
          );
          response.when(
            success: (data) => emit(SaveRecipientState.success(data)),
            error: (message) => emit(SaveRecipientState.failed(message)),
          );
        },
      );
    });
  }
}
