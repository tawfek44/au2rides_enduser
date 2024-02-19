part of 'add_ride_cubit.dart';

@freezed
class AddRideState with _$AddRideState {
  const factory AddRideState.initial() = _InitialAddRideState;
  const factory AddRideState.loading() = LoadingAddRideState;
  const factory AddRideState.loaded(countriesResponse) = LoadedAddRideState;
  const factory AddRideState.error(Object e) = ErrorAddRideState;
}
