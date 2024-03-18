part of 'choose_fuel_consumption_units_cubit.dart';

@freezed
class ChooseFuelConsumptionUnitsState with _$ChooseFuelConsumptionUnitsState {
  const factory ChooseFuelConsumptionUnitsState.initial() = _InitialChooseFuelConsumptionUnitsState;
  const factory ChooseFuelConsumptionUnitsState.loading() = LoadingChooseFuelConsumptionUnitsState;
  const factory ChooseFuelConsumptionUnitsState.loaded(response) = LoadedChooseFuelConsumptionUnitsState;
  const factory ChooseFuelConsumptionUnitsState.error(Object e) = ErrorChooseFuelConsumptionUnitsState;
}
