import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ppob_bpjs_package_event.dart';
part 'ppob_bpjs_package_state.dart';
part 'ppob_bpjs_package_bloc.freezed.dart';

class PpobBpjsPackageBloc
    extends Bloc<PpobBpjsPackageEvent, PpobBpjsPackageState> {
  PpobService ppobService = PpobService();

  PpobBpjsPackageBloc() : super(const PpobBpjsPackageState.initial()) {
    on<PpobBpjsPackageEvent>((event, emit) async {
      await event.when(
        getPackageList: () async {
        emit(const PpobBpjsPackageState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await ppobService.getPpobPostpaidPackage(
          token,
          PpobConst.bpjs,
        );
        response.when(
          success: (data) {
            emit(PpobBpjsPackageState.getPackageSuccess(data));
          },
          error: (message) {
            emit(PpobBpjsPackageState.failed(message));
          },
        );
      });
    });
  }
}
