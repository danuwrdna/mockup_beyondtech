// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/remittance_service.dart';
// import 'package:bpay_mobile/services/models/remittance/get_country_list_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'remittance_country_list_event.dart';

// part 'remittance_country_list_state.dart';

// part 'remittance_country_list_bloc.freezed.dart';

// class RemittanceCountryListBloc
//     extends Bloc<RemittanceCountryListEvent, RemittanceCountryListState> {
//   RemittanceService remittanceService = RemittanceService();

//   RemittanceCountryListBloc()
//       : super(const RemittanceCountryListState.initial()) {
//     on<_GetCountryList>((event, emit) async {
//       await event.when(getCountryList: () async {
//         emit(const RemittanceCountryListState.loading());
//         final token = SharedPreferencesService.getLoginToken() ?? "";
//         final response = await remittanceService.getCountryList(token);
//         response.when(
//           success: (data) => emit(RemittanceCountryListState.success(data)),
//           error: (message) => emit(RemittanceCountryListState.failed(message)),
//         );
//       });
//     });
//   }
// }
