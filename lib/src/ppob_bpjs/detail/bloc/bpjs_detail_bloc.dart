import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bpjs_detail_event.dart';
part 'bpjs_detail_state.dart';
part 'bpjs_detail_bloc.freezed.dart';

class BpjsDetailBloc extends Bloc<BpjsDetailEvent, BpjsDetailState> {
  TransactionService transactionService = TransactionService();

  BpjsDetailBloc() : super(const BpjsDetailState.initial()) {
    on<BpjsDetailEvent>((event, emit) async {
      await event.when(getDetail: (paymentCode, nominal) async {
        emit(const BpjsDetailState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await transactionService.getPpobDetail(
          token,
          paymentCode,
          TransactionType.ppob,
          nominal,
        );
        response.when(
          success: (data) {
            emit(BpjsDetailState.getBpjsDetailSuccess(data));
          },
          error: (message) {
            emit(BpjsDetailState.failed(message));
          },
        );
      });
    });
  }
}
