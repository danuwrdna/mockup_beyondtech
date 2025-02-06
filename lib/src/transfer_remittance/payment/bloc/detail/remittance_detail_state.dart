part of 'remittance_detail_bloc.dart';

@freezed
class RemittanceDetailState with _$RemittanceDetailState {
  const factory RemittanceDetailState.initial() = _Initial;
  const factory RemittanceDetailState.loading() = _Loading;
  const factory RemittanceDetailState.senderSuccess(RemittanceCountryDetailResponseModel senderData) = _SenderSuccess;
  const factory RemittanceDetailState.receiverSuccess(RemittanceCountryDetailResponseModel receiverData) = _ReceiverSuccess;
  const factory RemittanceDetailState.detailSuccess(RemittanceDetailResponseModel data) = _DetailSuccess;
  const factory RemittanceDetailState.failed(String message) = _Failed;
}
