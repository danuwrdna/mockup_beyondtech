import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_bills_inquiry_event.dart';

part 'water_bills_inquiry_state.dart';

part 'water_bills_inquiry_bloc.freezed.dart';

class WaterBillsInquiryBloc
    extends Bloc<WaterBillsInquiryEvent, WaterBillsInquiryState> {
  PpobService ppobService = PpobService();

  WaterBillsInquiryBloc() : super(const WaterBillsInquiryState.initial()) {
    on<WaterBillsInquiryEvent>((event, emit) async {
      await event.when(
        getBillDetail: (
          productId,
          packageId,
          denominationId,
          customerId,
        ) async {
          emit(const WaterBillsInquiryState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await ppobService.postPaidInquiry(
            token: token,
            productId: productId,
            packageId: packageId,
            denomId: denominationId,
            customerNumber: customerId,
          );
          response.when(
            success: (data) => emit(WaterBillsInquiryState.success(data)),
            error: (message) => emit(WaterBillsInquiryState.failed(message)),
          );
        },
        reset: () {
          emit(const WaterBillsInquiryState.initial());
        },
      );
    });
  }
}
