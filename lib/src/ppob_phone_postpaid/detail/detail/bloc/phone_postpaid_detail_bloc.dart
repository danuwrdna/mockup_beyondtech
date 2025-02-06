import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_postpaid_detail_event.dart';
part 'phone_postpaid_detail_state.dart';
part 'phone_postpaid_detail_bloc.freezed.dart';

class PhonePostpaidDetailBloc
    extends Bloc<PhonePostpaidDetailEvent, PhonePostpaidDetailState> {
  TransactionService transactionService = TransactionService();

  PhonePostpaidDetailBloc() : super(const PhonePostpaidDetailState.initial()) {
    on<PhonePostpaidDetailEvent>((event, emit) async {
      await event.when(
        getDetail: (paymentCode, nominal) async {
          emit(const PhonePostpaidDetailState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transactionService.getPpobDetail(
            token,
            paymentCode,
            TransactionType.ppob,
            nominal,
          );
          response.when(
            success: (data) {
              emit(PhonePostpaidDetailState.getPhonePostPaidDetailSuccess(data));
            },
            error: (message) {
              emit(PhonePostpaidDetailState.failed(message));
            },
          );
        },
      );
    });
  }
}
