part of 'privacy_policy_bloc.dart';

@freezed
class PrivacyPolicyEvent with _$PrivacyPolicyEvent {
  const factory PrivacyPolicyEvent.getList() = _GetList;
  const factory PrivacyPolicyEvent.getDetail(String id) = _GetDetail;
}
