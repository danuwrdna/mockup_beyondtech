part of 'bcare_post_message_bloc.dart';

@freezed
class BcarePostMessageState with _$BcarePostMessageState {
  const factory BcarePostMessageState.initial() = _Initial;
  const factory BcarePostMessageState.loading() = _Loading;
  const factory BcarePostMessageState.success() = _Success;
  const factory BcarePostMessageState.failed(String message) = _Failed;
}
