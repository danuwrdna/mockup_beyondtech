import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/services/implementations/verihubs_service.dart';
import 'package:bpay_mobile/src/auth_verification/id_card/step_1/model/ocr_ktp_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_1_id_card_event.dart';

part 'step_1_id_card_state.dart';

part 'step_1_id_card_bloc.freezed.dart';

class Step1IdCardBloc extends Bloc<Step1IdCardEvent, Step1IdCardState> {
  VerihubsService verihubsService = VerihubsService();

  Step1IdCardBloc() : super(const Step1IdCardState.initial()) {
    on<Step1IdCardEvent>((event, emit) async {
      await event.when(
        extractIdCardData: (base64image) async {
          emit(const Step1IdCardState.loading());
          final response = await verihubsService.extractKtpData(base64image);
          response.when(
            success: (data) => emit(Step1IdCardState.success(data)),
            error: (message) => emit(Step1IdCardState.failed(message)),
          );
        },
      );
    });
  }
}
