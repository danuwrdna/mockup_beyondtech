import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  void init() async {
    await Future.delayed(const Duration(seconds: 3));
    String token = SharedPreferencesService.getLoginToken() ?? "";
    bool isLogin = token.isNotEmpty;
    bool isBoarded = SharedPreferencesService.getBoarding();
    emit(SplashState.loaded(isBoarded, isLogin));
  }
}
