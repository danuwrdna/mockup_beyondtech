import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_bills_package_event.dart';

part 'water_bills_package_state.dart';

part 'water_bills_package_bloc.freezed.dart';

class WaterBillsPackageBloc
    extends Bloc<WaterBillsPackageEvent, WaterBillsPackageState> {
  PpobService ppobService = PpobService();

  WaterBillsPackageBloc() : super(const WaterBillsPackageState.initial()) {
    on<WaterBillsPackageEvent>((event, emit) async {
      await event.when(
        getPackageList: () async {
          emit(const WaterBillsPackageState.loading());
          final token = SharedPreferencesService.getLoginToken() ?? "";
          final response = await ppobService.getPpobPackage(
            token,
            PpobConst.waterBill,
          );
          response.when(
            success: (data) {
              emit(WaterBillsPackageState.getPackageSuccess(data));
            },
            error: (message) {
              emit(WaterBillsPackageState.failed(message));
            },
          );
        },
      );
    });
  }
}
