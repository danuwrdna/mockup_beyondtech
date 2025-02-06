import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_wallet_detail_event.dart';

part 'e_wallet_detail_state.dart';

part 'e_wallet_detail_bloc.freezed.dart';

class EWalletDetailBloc extends Bloc<EWalletDetailEvent, EWalletDetailState> {
  TransactionService transactionService = TransactionService();

  EWalletDetailBloc() : super(const EWalletDetailState.initial()) {
    on<EWalletDetailEvent>((event, emit) async {
      await event.when(
        getDetail: (paymentCode, nominal) async {
          emit(const EWalletDetailState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transactionService.getPpobDetail(
            token,
            paymentCode,
            TransactionType.ppob,
            nominal,
          );
          response.when(
            success: (data) => emit(EWalletDetailState.getDetailSuccess(data)),
            error: (message) => emit(EWalletDetailState.failed(message)),
          );
        },
      );
    });
  }
}
