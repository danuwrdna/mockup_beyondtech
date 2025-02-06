import 'package:bloc/bloc.dart';
import 'package:bpay_mobile/repositories/preferences/shared_preferences_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boarding_state.dart';
part 'boarding_cubit.freezed.dart';

class BoardingCubit extends Cubit<BoardingState> {
  BoardingCubit() : super(const BoardingState.initial());

  void setBoarding(bool isBoarded) async {
    await SharedPreferencesService.setBoarding(isBoarded);
    emit(const BoardingState.boarded());
  }
}
