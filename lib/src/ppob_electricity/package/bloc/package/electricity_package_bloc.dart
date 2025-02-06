import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'electricity_package_event.dart';

part 'electricity_package_state.dart';

part 'electricity_package_bloc.freezed.dart';

class ElectricityPackageBloc
    extends Bloc<ElectricityPackageEvent, ElectricityPackageState> {
  PpobService ppobService = PpobService();

  ElectricityPackageBloc() : super(const ElectricityPackageState.initial()) {
    on<ElectricityPackageEvent>((event, emit) async {
      emit(const ElectricityPackageState.loading());
      await event.when(
        getPackageList: () async {
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await ppobService.getPpobPackage(
            token,
            PpobConst.electricity,
          );
          response.when(
            success: (data) {
              emit(ElectricityPackageState.getPackageSuccess(data));
            },
            error: (message) {
              emit(ElectricityPackageState.failed(message));
            },
          );
        },
      );
    });
  }
}
