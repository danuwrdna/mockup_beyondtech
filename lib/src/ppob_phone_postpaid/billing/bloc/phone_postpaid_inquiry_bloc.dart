import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_postpaid_inquiry_event.dart';
part 'phone_postpaid_inquiry_state.dart';
part 'phone_postpaid_inquiry_bloc.freezed.dart';

class PhonePostpaidInquiryBloc
    extends Bloc<PhonePostpaidInquiryEvent, PhonePostpaidInquiryState> {
  PpobService ppobService = PpobService();

  PhonePostpaidInquiryBloc()
      : super(const PhonePostpaidInquiryState.initial()) {
    on<PhonePostpaidInquiryEvent>(
      (event, emit) async {
        await event.when(
          getBillDetail: (
            productId,
            packageId,
            denominationId,
            customerId,
          ) async {
            emit(const PhonePostpaidInquiryState.loading());
            final token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await ppobService.postPaidInquiry(
              token: token,
              productId: productId,
              packageId: packageId,
              denomId: denominationId,
              customerNumber: customerId,
            );
            response.when(
              success: (data) => emit(PhonePostpaidInquiryState.success(data)),
              error: (message) =>
                  emit(PhonePostpaidInquiryState.failed(message)),
            );
          },
          reset: () {
            emit(const PhonePostpaidInquiryState.initial());
          },
        );
      },
    );
  }
}
