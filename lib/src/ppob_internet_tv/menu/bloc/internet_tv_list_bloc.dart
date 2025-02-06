import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:bpay_mobile/services/implementations/ppob_service.dart';
import 'package:bpay_mobile/services/models/ppob/package/ppob_package_response_model.dart';
import 'package:bpay_mobile/utils/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_tv_list_event.dart';
part 'internet_tv_list_state.dart';
part 'internet_tv_list_bloc.freezed.dart';

class InternetTvListBloc
    extends Bloc<InternetTvListEvent, InternetTvListState> {
  PpobService ppobService = PpobService();

  InternetTvListBloc() : super(const InternetTvListState.initial()) {
    on<InternetTvListEvent>((event, emit) async {
      await event.when(getPackageList: () async {
        emit(const InternetTvListState.loading());
        final token = SharedPreferencesService.getLoginToken() ?? "";
        final response = await ppobService.getPpobPackage(
          token,
          PpobConst.internetTv,
        );
        response.when(success: (data) {
          emit(InternetTvListState.getPackageSuccess(data));
        }, error: (message) {
          emit(InternetTvListState.failed(message));
        });
      });
    });
  }
}
