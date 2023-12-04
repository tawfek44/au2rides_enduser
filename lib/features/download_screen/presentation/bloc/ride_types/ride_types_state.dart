part of 'ride_types_cubit.dart';

@freezed
class RideTypesState with _$RideTypesState {
  const factory RideTypesState.initial() = _InitialRideTypesUnits;
  const factory RideTypesState.loading() = RideTypesLoading;
  const factory RideTypesState.loaded(Response) = RideTypesLoaded;
  const factory RideTypesState.error(Object e) = RideTypesError;
}
