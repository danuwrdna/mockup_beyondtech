part of 'remittance_payment_method_bloc.dart';

@freezed
class RemittancePaymentMethodState with _$RemittancePaymentMethodState {
  const factory RemittancePaymentMethodState.initial() = _Initial;
  const factory RemittancePaymentMethodState.loading() = _Loading;
  const factory RemittancePaymentMethodState.success(PaymentMethodListResponseModel data) = _Success;
  const factory RemittancePaymentMethodState.failed(String message) = _Failed;
}
