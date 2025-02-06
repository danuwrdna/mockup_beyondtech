// import 'package:bloc/bloc.dart';
// import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
// import 'package:bpay_mobile/services/implementations/notification_service.dart';
// import 'package:bpay_mobile/services/models/notification/notify_inbox_response_model.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'notify_inbox_event.dart';
// part 'notify_inbox_state.dart';
// part 'notify_inbox_bloc.freezed.dart';

// class NotifyInboxBloc extends Bloc<NotifyInboxEvent, NotifyInboxState> {
//   NotificationService notificationService = NotificationService();

//   NotifyInboxBloc() : super(const NotifyInboxState.initial()) {
//     on<NotifyInboxEvent>((event, emit) async {
//       await event.when(getInbox: (page, limit) async {
//         emit(const NotifyInboxState.loading());
//         final token = SharedPreferencesService.getLoginToken() ?? "";
//         final response = await notificationService.getInbox(
//           token,
//           page,
//           limit,
//         );
//         response.when(
//           success: (data) => emit(NotifyInboxState.success(data)),
//           error: (message) => emit(NotifyInboxState.failed(message)),
//         );
//       });
//     });
//   }
// }
