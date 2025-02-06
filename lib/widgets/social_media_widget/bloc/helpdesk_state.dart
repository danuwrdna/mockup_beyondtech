part of 'helpdesk_bloc.dart';

@freezed
class HelpdeskState with _$HelpdeskState {
  const factory HelpdeskState.initial() = _Initial;
  const factory HelpdeskState.loading() = _Loading;
  const factory HelpdeskState.success(HelpdeskResponseModel data) = _Success;
  const factory HelpdeskState.failed(String message) = _Failed;
}
