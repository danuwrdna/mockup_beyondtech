// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/ppob_service.dart';
// import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'phone_data_package_data_event.dart';

// part 'phone_data_package_data_state.dart';

// part 'phone_data_package_data_bloc.freezed.dart';

// class PhoneDataPackageDataBloc
//     extends Bloc<PhoneDataPackageDataEvent, PhoneDataPackageDataState> {
//   PpobService ppobService = PpobService();

//   PhoneDataPackageDataBloc()
//       : super(const PhoneDataPackageDataState.initial()) {
//     on<PhoneDataPackageDataEvent>((event, emit) async {
//       await event.when(
//         getPackageList: () async {
//           emit(const PhoneDataPackageDataState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await ppobService.getPpobPackage(
//             token,
//             PpobConst.mobileData,
//           );
//           response.when(
//             success: (data) {
//               emit(PhoneDataPackageDataState.getPackageSuccess(data));
//             },
//             error: (message) {
//               emit(PhoneDataPackageDataState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
