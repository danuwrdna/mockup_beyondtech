// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/ppob_service.dart';
// import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
// import 'package:bpay_mobile/utils/constants.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'e_wallet_package_event.dart';

// part 'e_wallet_package_state.dart';

// part 'e_wallet_package_bloc.freezed.dart';

// class EWalletPackageBloc
//     extends Bloc<EWalletPackageEvent, EWalletPackageState> {
//   PpobService ppobService = PpobService();

//   EWalletPackageBloc() : super(const EWalletPackageState.initial()) {
//     on<EWalletPackageEvent>((event, emit) async {
//       await event.when(
//         getPackageList: () async {
//           emit(const EWalletPackageState.loading());
//           final token = SharedPreferencesService.getLoginToken() ?? "";
//           final response = await ppobService.getPpobPackage(
//             token,
//             PpobConst.eWallet,
//           );
//           response.when(
//             success: (data) {
//               emit(EWalletPackageState.getPackageSuccess(data));
//             },
//             error: (message) {
//               emit(EWalletPackageState.failed(message));
//             },
//           );
//         },
//       );
//     });
//   }
// }
