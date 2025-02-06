import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_bills_detail_event.dart';
part 'water_bills_detail_state.dart';
part 'water_bills_detail_bloc.freezed.dart';

class WaterBillsDetailBloc
    extends Bloc<WaterBillsDetailEvent, WaterBillsDetailState> {
  TransactionService transactionService = TransactionService();

  WaterBillsDetailBloc() : super(const WaterBillsDetailState.initial()) {
    on<WaterBillsDetailEvent>(
      (event, emit) async {
        await event.when(
          getDetail: (paymentCode, nominal) async {
            emit(const WaterBillsDetailState.loading());
            final token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await transactionService.getPpobDetail(
              token,
              paymentCode,
              TransactionType.ppob,
              nominal,
            );
            response.when(
              success: (data) {
                emit(WaterBillsDetailState.getWaterBillsDetailSuccess(data));
              },
              error: (message) {
                emit(WaterBillsDetailState.failed(message));
              },
            );
          },
        );
      },
    );
  }
}
