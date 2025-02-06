part of 'step_1_id_card_bloc.dart';

@freezed
class Step1IdCardEvent with _$Step1IdCardEvent {
  const factory Step1IdCardEvent.extractIdCardData(String base64image) = _ExtractIdCardData;
}
