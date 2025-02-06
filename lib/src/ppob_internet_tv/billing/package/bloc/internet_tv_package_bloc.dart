import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_tv_package_event.dart';
part 'internet_tv_package_state.dart';
part 'internet_tv_package_bloc.freezed.dart';

class InternetTvPackageBloc
    extends Bloc<InternetTvPackageEvent, InternetTvPackageState> {
  PpobService ppobService = PpobService();

  InternetTvPackageBloc() : super(const InternetTvPackageState.initial()) {
    on<InternetTvPackageEvent>((event, emit) async {
      await event.when(getPackageList: () async {
        emit(const InternetTvPackageState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await ppobService.getPpobPostpaidPackage(
          token,
          PpobConst.internetTv,
        );
        response.when(success: (data) {
          emit(
            InternetTvPackageState.getPackageSuccess(data),
          );
        }, error: (message) {
          emit(
            InternetTvPackageState.failed(message),
          );
        });
      });
    });
  }
}
