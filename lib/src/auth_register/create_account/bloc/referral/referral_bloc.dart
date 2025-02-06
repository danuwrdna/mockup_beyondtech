// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/services/implementations/auth_service.dart';
// import 'package:bpay_mobile/src/auth_register/create_account/models/find_referral_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'referral_event.dart';

// part 'referral_state.dart';

// part 'referral_bloc.freezed.dart';

// class ReferralBloc extends Bloc<ReferralEvent, ReferralState> {
//   AuthService authService = AuthService();

//   ReferralBloc() : super(const ReferralState.initial()) {
//     on<ReferralEvent>((event, emit) async {
//       await event.when(
//         find: (referralCode) async {
//           emit(const ReferralState.loading());
//           final response = await authService.findReferral(referralCode);
//           response.when(
//             success: (data) => emit(ReferralState.success(data)),
//             error: (message) => emit(ReferralState.error(message)),
//           );
//         },
//       );
//     });
//   }
// }
