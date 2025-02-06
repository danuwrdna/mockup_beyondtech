// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/transfer_single_service.dart';
// import 'package:bpay_mobile/services/models/transfer_single/destination_bank_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'multi_transfer_bank_list_event.dart';

// part 'multi_transfer_bank_list_state.dart';

// part 'multi_transfer_bank_list_bloc.freezed.dart';

// class MultiTransferBankListBloc
//     extends Bloc<MultiTransferBankListEvent, MultiTransferBankListState> {
//   TransferSingleService transferSingleService = TransferSingleService();

//   MultiTransferBankListBloc()
//       : super(const MultiTransferBankListState.initial()) {
//     on<MultiTransferBankListEvent>((event, emit) async {
//       await event.when(
//         getBankList: () async {
//           emit(const MultiTransferBankListState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await transferSingleService.getBankList(token);
//           response.when(
//             success: (data) {
//               emit(MultiTransferBankListState.success(data));
//             },
//             error: (message) {
//               emit(MultiTransferBankListState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
