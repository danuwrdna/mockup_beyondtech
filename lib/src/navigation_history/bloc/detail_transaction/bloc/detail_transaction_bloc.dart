import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/detail_transaction/detail_transaction_response_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_transaction_event.dart';
part 'detail_transaction_state.dart';
part 'detail_transaction_bloc.freezed.dart';

class DetailTransactionBloc
    extends Bloc<DetailTransactionEvent, DetailTransactionState> {
  TransactionService transactionService = TransactionService();

  DetailTransactionBloc() : super(const DetailTransactionState.initial()) {
    on<DetailTransactionEvent>((event, emit) async {
      await event.when(
          getDetailTransaction: (transactionId, boundaryType, createdAt) async {
        emit(const DetailTransactionState.loading());
        final token = SharedPreferencesService.getLoginToken();
        final response = await transactionService.getTransactionDetail(
          token ?? "",
          transactionId,
          boundaryType,
          createdAt,
        );
        response.when(
          success: (data) => emit(DetailTransactionState.success(data)),
          error: (message) => emit(DetailTransactionState.failed(message)),
        );
      });
    });
  }
}
