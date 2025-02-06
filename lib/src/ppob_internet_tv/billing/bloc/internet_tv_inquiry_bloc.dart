import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_tv_inquiry_event.dart';
part 'internet_tv_inquiry_state.dart';
part 'internet_tv_inquiry_bloc.freezed.dart';

class InternetTvInquiryBloc
    extends Bloc<InternetTvInquiryEvent, InternetTvInquiryState> {
  PpobService ppobService = PpobService();

  InternetTvInquiryBloc() : super(const InternetTvInquiryState.initial()) {
    on<InternetTvInquiryEvent>((event, emit) async {
      await event.when(
      getBillDetail: (
        productId,
        packageId,
        denominationId,
        customerId,
      ) async {
        emit(const InternetTvInquiryState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await ppobService.postPaidInquiry(
          token: token,
          productId: productId,
          packageId: packageId,
          denomId: denominationId,
          customerNumber: customerId,
        );
        response.when(
          success: (data) => emit(InternetTvInquiryState.success(data)),
          error: (message) => emit(InternetTvInquiryState.failed(message)),
        );
      },
      reset: () {
        emit(const InternetTvInquiryState.initial());
      }
      );
    });
  }
}
