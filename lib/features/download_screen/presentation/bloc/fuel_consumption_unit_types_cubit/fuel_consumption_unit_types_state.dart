part of 'fuel_consumption_unit_types_cubit.dart';

@freezed
class FuelConsumptionUnitTypesState with _$FuelConsumptionUnitTypesState {
  const factory FuelConsumptionUnitTypesState.initial() = _InitialFuelConsumptionUnitTypesState;
  const factory FuelConsumptionUnitTypesState.loading() = FuelConsumptionUnitTypesStateLoading;
  const factory FuelConsumptionUnitTypesState.loaded(currencyResponse) = FuelConsumptionUnitTypesStateLoaded;
  const factory FuelConsumptionUnitTypesState.error(Object e) = FuelConsumptionUnitTypesStateError;
}
