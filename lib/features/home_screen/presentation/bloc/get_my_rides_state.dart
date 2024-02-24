part of 'get_my_rides_cubit.dart';

@freezed
class GetMyRidesState with _$GetMyRidesState {
  const factory GetMyRidesState.initial() = _InitialGetMyRidesState;
  const factory GetMyRidesState.loading() = LoadingGetMyRidesState;
  const factory GetMyRidesState.loaded(response) = LoadedGetMyRidesState;
  const factory GetMyRidesState.error(Object e) = ErrorGetMyRidesState;
}
