part of 'fuel_octane_number_cubit.dart';

@freezed
class FuelOctaneNumberState with _$FuelOctaneNumberState {
  const factory FuelOctaneNumberState.initial() = _InitialFuelOctaneNumberState;
  const factory FuelOctaneNumberState.loading() = FuelOctaneNumberStateLoading;
  const factory FuelOctaneNumberState.loaded(response) = FuelOctaneNumberStateLoaded;
  const factory FuelOctaneNumberState.error(Object e) = FuelOctaneNumberStateError;
}
