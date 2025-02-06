part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.changePassword(
    String lastPassword,
    String newPassword,
  ) = _ChangePassword;
}
