part of 'bcare_post_message_bloc.dart';

@freezed
class BcarePostMessageEvent with _$BcarePostMessageEvent {
  const factory BcarePostMessageEvent.sendMessage(
    String message,
  ) = _SendMessage;
}
