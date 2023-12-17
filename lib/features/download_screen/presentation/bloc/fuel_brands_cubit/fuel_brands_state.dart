part of 'fuel_brands_cubit.dart';

@freezed
class FuelBrandsState with _$FuelBrandsState {
  const factory FuelBrandsState.initial() = _InitialFuelBrandsState;
  const factory FuelBrandsState.loading() = FuelBrandsStateLoading;
  const factory FuelBrandsState.loaded(response) = FuelBrandsStateLoaded;
  const factory FuelBrandsState.error(Object e) = FuelBrandsStateError;
}
