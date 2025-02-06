import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transaction_service.dart';
import 'package:bpay_mobile/services/models/transaction/ppob_checkout/ppob_checkout_response_model.dart';
import 'package:bpay_mobile/services/models/transfer_single/transaction_type_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_data_detail_event.dart';

part 'phone_data_detail_state.dart';

part 'phone_data_detail_bloc.freezed.dart';

class PhoneDataDetailBloc
    extends Bloc<PhoneDataDetailEvent, PhoneDataDetailState> {
  TransactionService transactionService = TransactionService();

  PhoneDataDetailBloc() : super(const PhoneDataDetailState.initial()) {
    on<PhoneDataDetailEvent>((event, emit) async {
      await event.when(
        getDetail: (paymentCode, nominal) async {
          emit(const PhoneDataDetailState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transactionService.getPpobDetail(
            token,
            paymentCode,
            TransactionType.ppob,
            nominal,
          );
          response.when(
            success: (data) => emit(PhoneDataDetailState.success(data)),
            error: (message) => emit(PhoneDataDetailState.failed(message)),
          );
        },
      );
    });
  }
}
