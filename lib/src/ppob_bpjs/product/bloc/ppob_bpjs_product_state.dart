part of 'ppob_bpjs_product_bloc.dart';

@freezed
class PpobBpjsProductState with _$PpobBpjsProductState {
  const factory PpobBpjsProductState.initial() = _Initial;
  const factory PpobBpjsProductState.loading() = _Loading;
  const factory PpobBpjsProductState.getProductBpjsSuccess(PpobProductResponseModel data) = _Success;
  const factory PpobBpjsProductState.failed(String message) = _Failed;
}
