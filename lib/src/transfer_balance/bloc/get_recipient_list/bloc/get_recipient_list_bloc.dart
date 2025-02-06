// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_transaction_service.dart';
// import 'package:bpay_mobile/services/models/profile_transaction/get_recipient_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'get_recipient_list_event.dart';

// part 'get_recipient_list_state.dart';

// part 'get_recipient_list_bloc.freezed.dart';

// class GetRecipientListBloc
//     extends Bloc<GetRecipientListEvent, GetRecipientListState> {
//   ProfileTransactionService profileTransactionService =
//       ProfileTransactionService();

//   GetRecipientListBloc() : super(const GetRecipientListState.initial()) {
//     on<GetRecipientListEvent>((event, emit) async {
//       await event.when(
//         getRecepientList: () async {
//           emit(const GetRecipientListState.loading());
//           final String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileTransactionService.getRecipientList(
//             token,
//           );
//           response.when(
//             success: (data) => emit(GetRecipientListState.success(data)),
//             error: (message) => emit(GetRecipientListState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
