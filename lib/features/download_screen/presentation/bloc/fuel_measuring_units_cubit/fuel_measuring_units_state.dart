part of 'fuel_measuring_units_cubit.dart';

@freezed
class FuelMeasuringUnitsState with _$FuelMeasuringUnitsState {
  const factory FuelMeasuringUnitsState.initial() = _InitialFuelMeasuringUnitsState;
  const factory FuelMeasuringUnitsState.loading() = FuelMeasuringUnitsStateLoading;
  const factory FuelMeasuringUnitsState.loaded(currencyResponse) = FuelMeasuringUnitsStateLoaded;
  const factory FuelMeasuringUnitsState.error(Object e) = FuelMeasuringUnitsStateError;
}
