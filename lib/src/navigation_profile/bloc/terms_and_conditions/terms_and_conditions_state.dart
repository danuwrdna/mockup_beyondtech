part of 'terms_and_conditions_bloc.dart';

@freezed
class TermsAndConditionsState with _$TermsAndConditionsState {
  const factory TermsAndConditionsState.initial() = _Initial;
  const factory TermsAndConditionsState.loading() = _Loading;
  const factory TermsAndConditionsState.success(TermAndConditionDetailResponseModel data) = _Success;
  const factory TermsAndConditionsState.successList(TermAndConditionResponseModel data) = _SuccessList;
  const factory TermsAndConditionsState.failed(String message) = _Failed;
}
