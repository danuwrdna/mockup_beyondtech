part of 'privacy_policy_bloc.dart';

@freezed
class PrivacyPolicyState with _$PrivacyPolicyState {
  const factory PrivacyPolicyState.initial() = _Initial;
  const factory PrivacyPolicyState.loading() = _Loading;
  const factory PrivacyPolicyState.success(TermAndConditionDetailResponseModel data) = _Success;
  const factory PrivacyPolicyState.successList(TermAndConditionResponseModel data) = _SuccessList;
  const factory PrivacyPolicyState.failed(String message) = _Failed;
}
