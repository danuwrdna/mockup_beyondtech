import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';

part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.page(0, false));

  void changePage(int page, {bool isVoucher = false}) => emit(NavigationState.page(page, isVoucher));
}
