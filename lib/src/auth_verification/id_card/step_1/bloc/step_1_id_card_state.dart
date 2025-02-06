part of 'step_1_id_card_bloc.dart';

@freezed
class Step1IdCardState with _$Step1IdCardState {
  const factory Step1IdCardState.initial() = _Initial;
  const factory Step1IdCardState.loading() = _Loading;
  const factory Step1IdCardState.success(OcrKtpResponseModel data) = _Success;
  const factory Step1IdCardState.failed(String message) = _Failed;
}
