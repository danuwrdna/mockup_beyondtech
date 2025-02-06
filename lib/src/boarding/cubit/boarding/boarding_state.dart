part of 'boarding_cubit.dart';

@freezed
class BoardingState with _$BoardingState {
  const factory BoardingState.initial() = _Initial;
  const factory BoardingState.boarded() = _Boarded;
}
