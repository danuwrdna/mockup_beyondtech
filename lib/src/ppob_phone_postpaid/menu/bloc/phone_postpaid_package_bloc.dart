import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_postpaid_package_event.dart';
part 'phone_postpaid_package_state.dart';
part 'phone_postpaid_package_bloc.freezed.dart';

class PhonePostpaidPackageBloc
    extends Bloc<PhonePostpaidPackageEvent, PhonePostpaidPackageState> {
  PpobService ppobService = PpobService();

  PhonePostpaidPackageBloc()
      : super(const PhonePostpaidPackageState.initial()) {
    on<PhonePostpaidPackageEvent>(
      (event, emit) async {
        await event.when(
          getPackageList: () async {
            emit(const PhonePostpaidPackageState.loading());
            final token = SharedPreferencesService.getLoginToken() ?? "";
            final response = await ppobService.getPpobPackage(
              token,
              PpobConst.phonePostpaid,
            );
            response.when(
              success: (data) {
                emit(PhonePostpaidPackageState.getPackageSuccess(data));
              },
              error: (message) {
                emit(PhonePostpaidPackageState.failed(message));
              },
            );
          },
        );
      },
    );
  }
}
