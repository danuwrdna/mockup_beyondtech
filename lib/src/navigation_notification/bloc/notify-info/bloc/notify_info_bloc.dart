// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/notification_service.dart';
// import 'package:bpay_mobile/services/models/notification/notify_info_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'notify_info_event.dart';
// part 'notify_info_state.dart';
// part 'notify_info_bloc.freezed.dart';

// class NotifyInfoBloc extends Bloc<NotifyInfoEvent, NotifyInfoState> {
//   NotificationService notificationService = NotificationService();

//   NotifyInfoBloc() : super(const NotifyInfoState.initial()) {
//     on<NotifyInfoEvent>(
//       (event, emit) async {
//         await event.when(
//           getNotify: (page, limit) async {
//             emit(const NotifyInfoState.loading());
//             final token = SharedPreferencesService.getLoginToken() ?? "";
//             final response = await notificationService.getNotify(
//               token,
//               page,
//               limit,
//             );
//             response.when(
//               success: (data) =>
//                   emit(NotifyInfoState.getNotifyInfoSuccess(data)),
//               error: (message) => emit(NotifyInfoState.failed(message)),
//             );
//           },
//         );
//       },
//     );
//   }
// }
