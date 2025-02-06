import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
import 'package:bpay_mobile/services/models/transfer_single/history_transfer_single_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_transfer_status_event.dart';

part 'multi_transfer_status_state.dart';

part 'multi_transfer_status_bloc.freezed.dart';

class MultiTransferStatusBloc
    extends Bloc<MultiTransferStatusEvent, MultiTransferStatusState> {
  TransferSingleService transferSingleService = TransferSingleService();

  MultiTransferStatusBloc() : super(const MultiTransferStatusState.initial()) {
    on<MultiTransferStatusEvent>((event, emit) async {
      await event.when(
        getTransactionStatus: (refId) async {
          emit(const MultiTransferStatusState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await transferSingleService
              .getBankTransferTransactionStatus(token, refId);
          response.when(
            success: (data) => emit(MultiTransferStatusState.success(data)),
            error: (message) => emit(MultiTransferStatusState.failed(message)),
          );
        },
      );
    });
  }
}
