// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/remittance_service.dart';
// import 'package:bpay_mobile/services/models/remittance/get_exchange_rate_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'remittance_exchange_rate_event.dart';

// part 'remittance_exchange_rate_state.dart';

// part 'remittance_exchange_rate_bloc.freezed.dart';

// class RemittanceExchangeRateBloc
//     extends Bloc<RemittanceExchangeRateEvent, RemittanceExchangeRateState> {
//   RemittanceService remittanceService = RemittanceService();

//   RemittanceExchangeRateBloc()
//       : super(const RemittanceExchangeRateState.initial()) {
//     on<_GetExchangeRate>((event, emit) async {
//       await event.when(getExchangeRate: (senderCountryCode,
//           senderCurrencyCode,
//           recipientCountryCode,
//           recipientCurrencyCode,
//           serviceOptionCode) async {
//         emit(const RemittanceExchangeRateState.loading());
//         final token = SharedPreferencesService.getLoginToken() ?? "";
//         final response = await remittanceService.getExchangeRate(
//           token,
//           senderCountryCode,
//           senderCurrencyCode,
//           recipientCountryCode,
//           recipientCurrencyCode,
//           serviceOptionCode,
//         );
//         response.when(
//           success: (data) => emit(RemittanceExchangeRateState.success(data)),
//           error: (message) => emit(RemittanceExchangeRateState.failed(message)),
//         );
//       });
//     });
//   }
// }
