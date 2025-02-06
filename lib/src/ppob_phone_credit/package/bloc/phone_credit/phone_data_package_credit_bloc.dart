// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/ppob_service.dart';
// import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'phone_data_package_credit_event.dart';
// part 'phone_data_package_credit_state.dart';
// part 'phone_data_package_credit_bloc.freezed.dart';

// class PhoneDataPackageCreditBloc extends Bloc<PhoneDataPackageCreditEvent, PhoneDataPackageCreditState> {
//   PpobService ppobService = PpobService();

//   PhoneDataPackageCreditBloc() : super(const PhoneDataPackageCreditState.initial()) {
//     on<PhoneDataPackageCreditEvent>((event, emit) async {
//       await event.when(
//         getPackageList: () async {
//           emit(const PhoneDataPackageCreditState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await ppobService.getPpobPackage(
//             token,
//             PpobConst.phone,
//           );
//           response.when(
//             success: (data) {
//               emit(PhoneDataPackageCreditState.getPackageSuccess(data));
//             },
//             error: (message) {
//               emit(PhoneDataPackageCreditState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
