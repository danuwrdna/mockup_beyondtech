part of 'terms_and_conditions_bloc.dart';

@freezed
class TermsAndConditionsEvent with _$TermsAndConditionsEvent {
  const factory TermsAndConditionsEvent.getList() = _GetList;
  const factory TermsAndConditionsEvent.getDetail(String id) = _GetDetail;
}
