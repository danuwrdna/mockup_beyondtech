import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_detail_event.dart';

part 'electricity_detail_state.dart';

part 'electricity_detail_bloc.freezed.dart';

class ElectricityDetailBloc
    extends Bloc<ElectricityDetailEvent, ElectricityDetailState> {
  TransactionService transactionService = TransactionService();

  ElectricityDetailBloc() : super(const ElectricityDetailState.initial()) {
    on<ElectricityDetailEvent>((event, emit) async {
      emit(const ElectricityDetailState.loading());
      await event.when(
        getDetail: (paymentCode, nominal) async {
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transactionService.getPpobDetail(
            token,
            paymentCode,
            TransactionType.ppob,
            nominal,
          );
          response.when(
            success: (data) {
              emit(ElectricityDetailState.getDetailSuccess(data));
            },
            error: (message) {
              emit(ElectricityDetailState.failed(message));
            },
          );
        },
      );
    });
  }
}
