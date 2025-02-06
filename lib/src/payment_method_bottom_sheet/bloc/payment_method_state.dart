part of 'payment_method_bloc.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState.initial() = _Initial;
  const factory PaymentMethodState.loading() = _Loading;
  const factory PaymentMethodState.success(PaymentMethodListResponseModel data) = _Success;
  const factory PaymentMethodState.failed(String message) = _Failed;
}
