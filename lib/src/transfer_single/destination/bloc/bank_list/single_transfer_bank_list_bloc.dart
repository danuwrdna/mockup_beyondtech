// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'single_transfer_bank_list_event.dart';

// part 'single_transfer_bank_list_state.dart';

// part 'single_transfer_bank_list_bloc.freezed.dart';

// class SingleTransferBankListBloc
//     extends Bloc<SingleTransferBankListEvent, SingleTransferBankListState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   SingleTransferBankListBloc()
//       : super(const SingleTransferBankListState.initial()) {
//     on<SingleTransferBankListEvent>((event, emit) async {
//       await event.when(
//         getBankList: () async {
//           emit(const SingleTransferBankListState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transferSingleService.getBankList(token);
//           response.when(
//             success: (data) {
//               emit(SingleTransferBankListState.success(data));
//             },
//             error: (message) {
//               emit(SingleTransferBankListState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
