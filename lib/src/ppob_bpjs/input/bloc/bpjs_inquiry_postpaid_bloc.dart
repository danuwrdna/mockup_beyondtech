// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/ppob_service.dart';
// import 'package:bpay_mobile/services/models/ppob/postpaid/inquiry_postpaid_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'bpjs_inquiry_postpaid_event.dart';
// part 'bpjs_inquiry_postpaid_state.dart';
// part 'bpjs_inquiry_postpaid_bloc.freezed.dart';


// class BpjsInquiryPostpaidBloc
//     extends Bloc<BpjsInquiryPostpaidEvent, BpjsInquiryPostpaidState> {
//   PpobService ppobService = PpobService();

//   BpjsInquiryPostpaidBloc() : super(const BpjsInquiryPostpaidState.initial()) {
//     on<BpjsInquiryPostpaidEvent>(
//       (event, emit) async {
//         await event.when(
//           getBpjsPostpaid: (
//             String productId,
//             String packageId,
//             String denomId,
//             String customerNumber,
//           ) async {
//             emit(const BpjsInquiryPostpaidState.loading());
//             final token = SharedPreferencesService.getLoginToken() ?? "";
//             final response = await ppobService.postPaidInquiry(
//               token: token,
//               productId: productId,
//               packageId: packageId,
//               denomId: denomId,
//               customerNumber: customerNumber,
//             );
//             response.when(
//               success: (data) => 
//                 emit(BpjsInquiryPostpaidState.getBpjsPostpaidSuccess(data)),
              
//               error: (message) => 
//                 emit(BpjsInquiryPostpaidState.failed(message)),
              
//             );
//           },
//           reset: () {
//             emit(const BpjsInquiryPostpaidState.initial());
//         },
//         );
//       },
//     );
//   }
// }
