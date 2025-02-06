part of 'remittance_payment_method_bloc.dart';

@freezed
class RemittancePaymentMethodEvent with _$RemittancePaymentMethodEvent {
  const factory RemittancePaymentMethodEvent.getPaymentList(int nominal) = _GetPaymentList;
}
