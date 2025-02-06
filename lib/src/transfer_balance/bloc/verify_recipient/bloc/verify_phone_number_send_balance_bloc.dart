import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:bpay_mobile/services/models/transfer_single/verify_recipient_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_number_send_balance_event.dart';

part 'verify_phone_number_send_balance_state.dart';

part 'verify_phone_number_send_balance_bloc.freezed.dart';

class VerifyPhoneNumberSendBalanceBloc extends Bloc<
    VerifyPhoneNumberSendBalanceEvent, VerifyPhoneNumberSendBalanceState> {
  TransferSingleService transferSingleService = TransferSingleService();

  VerifyPhoneNumberSendBalanceBloc()
      : super(const VerifyPhoneNumberSendBalanceState.initial()) {
    on<VerifyPhoneNumberSendBalanceEvent>((event, emit) async {
      await event.when(
        verifyPhoneBalance: (accountNumber) async {
          emit(const VerifyPhoneNumberSendBalanceState.loading());
          final String token = SharedPreferencesService.getLoginToken() ?? "";
          final response =
              await transferSingleService.verifySendBalanceRecipient(
            token,
            accountNumber,
            TransactionType.transferBeyond,
          );
          response.when(
            success: (data) {
              emit(VerifyPhoneNumberSendBalanceState.success(data));
            },
            error: (message) {
              emit(VerifyPhoneNumberSendBalanceState.failed(message));
            },
          );
        },
      );
    });
  }
}
