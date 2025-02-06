// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/profile_service.dart';
// import 'package:bpay_mobile/src/navigation_home/models/balance_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'balance_event.dart';

// part 'balance_state.dart';

// part 'balance_bloc.freezed.dart';

// class BalanceBloc extends Bloc<BalanceEvent, BalanceState> {
//   ProfileService profileService = ProfileService();

//   BalanceBloc() : super(const BalanceState.initial()) {
//     on<BalanceEvent>((event, emit) async {
//       await event.when(
//         getBalance: () async {
//           emit(const BalanceState.loading());
//           String token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await profileService.getUserBalance(token);
//           response.when(
//             success: (data) => emit(BalanceState.success(data)),
//             error: (message) => emit(BalanceState.failed(message)),
//           );
//         },
//       );
//     });
//   }
// }
