part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.page(int page, bool isVoucher) = _Page;
}
