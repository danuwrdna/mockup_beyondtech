part of 'bcare_get_message_bloc.dart';

@freezed
class BcareGetMessageState with _$BcareGetMessageState {
  const factory BcareGetMessageState.initial() = _Initial;
  const factory BcareGetMessageState.loading() = _Loading;
  const factory BcareGetMessageState.success(List<GetMessageData> messages) = _Success;
  const factory BcareGetMessageState.failed(String message) = _Failed;
}
