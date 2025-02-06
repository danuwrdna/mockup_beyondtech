// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/remittance_service.dart';
// import 'package:bpay_mobile/services/models/remittance/get_service_options_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'remittance_service_options_event.dart';
// part 'remittance_service_options_state.dart';
// part 'remittance_service_options_bloc.freezed.dart';

// class RemittanceServiceOptionsBloc
//     extends Bloc<RemittanceServiceOptionsEvent, RemittanceServiceOptionsState> {
//   RemittanceService remittanceService = RemittanceService();

//   RemittanceServiceOptionsBloc()
//       : super(const RemittanceServiceOptionsState.initial()) {
//     on<_GetServiceOptions>((event, emit) async {
//       await event.when(getServiceOptions: (countryCode) async {
//         emit(const RemittanceServiceOptionsState.loading());
//         final token = SharedPreferencesService.getLoginToken() ?? "";
//         final response = await remittanceService.getServiceOptions(
//           token,
//           countryCode,
//         );
//         response.when(
//           success: (data) => emit(RemittanceServiceOptionsState.success(data)),
//           error: (message) =>
//               emit(RemittanceServiceOptionsState.failed(message)),
//         );
//       });
//     });
//   }
// }
