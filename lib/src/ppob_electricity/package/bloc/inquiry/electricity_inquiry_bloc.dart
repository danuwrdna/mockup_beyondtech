// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/ppob_service.dart';
// import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'electricity_inquiry_event.dart';

// part 'electricity_inquiry_state.dart';

// part 'electricity_inquiry_bloc.freezed.dart';

// class ElectricityInquiryBloc
//     extends Bloc<ElectricityInquiryEvent, ElectricityInquiryState> {
//   PpobService ppobService = PpobService();

//   ElectricityInquiryBloc() : super(const ElectricityInquiryState.initial()) {
//     on<ElectricityInquiryEvent>((event, emit) async {
//       await event.when(
//         getBillDetail: (
//           productId,
//           packageId,
//           denominationId,
//           customerId,
//         ) async {
//           emit(const ElectricityInquiryState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await ppobService.postPaidInquiry(
//             token: token,
//             productId: productId,
//             packageId: packageId,
//             denomId: denominationId,
//             customerNumber: customerId,
//           );
//           response.when(
//             success: (data) => emit(ElectricityInquiryState.success(data)),
//             error: (message) => emit(ElectricityInquiryState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
