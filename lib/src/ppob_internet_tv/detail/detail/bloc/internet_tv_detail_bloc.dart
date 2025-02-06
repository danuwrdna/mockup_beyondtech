import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_tv_detail_event.dart';
part 'internet_tv_detail_state.dart';
part 'internet_tv_detail_bloc.freezed.dart';

class InternetTvDetailBloc
    extends Bloc<InternetTvDetailEvent, InternetTvDetailState> {
  TransactionService transactionService = TransactionService();

  InternetTvDetailBloc() : super(const InternetTvDetailState.initial()) {
    on<InternetTvDetailEvent>(
      (event, emit) async {
        await event.when(
          getDetail: (paymentCode, nominal) async {
            emit(const InternetTvDetailState.loading());
            final token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await transactionService.getPpobDetail(
              token,
              paymentCode,
              TransactionType.ppob,
              nominal,
            );
            response.when(
              success: (data) {
                emit(InternetTvDetailState.getInternetTvDetailSuccess(data));
              },
              error: (message) {
                emit(InternetTvDetailState.failed(message));
              },
            );
          },
        );
      },
    );
  }
}
