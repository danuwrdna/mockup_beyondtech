import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/product/ppob_product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ppob_bpjs_product_event.dart';
part 'ppob_bpjs_product_state.dart';
part 'ppob_bpjs_product_bloc.freezed.dart';

class PpobBpjsProductBloc
    extends Bloc<PpobBpjsProductEvent, PpobBpjsProductState> {
  PpobService ppobService = PpobService();

  PpobBpjsProductBloc() : super(const PpobBpjsProductState.initial()) {
    on<PpobBpjsProductEvent>(
      (event, emit) async {
        await event.when(
          getBpjsProductList: () async {
            emit(const PpobBpjsProductState.loading());
            final token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await ppobService.getPpobProduct(
              token,
            );
            response.when(
              success: (data) {
                emit(PpobBpjsProductState.getProductBpjsSuccess(data));
              },
              error: (message) {
                emit(PpobBpjsProductState.failed(message));
              },
            );
          },
        );
      },
    );
  }
}
