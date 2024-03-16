part of 'choose_fuel_units_cubit.dart';

@freezed
class ChooseFuelUnitsState with _$ChooseFuelUnitsState {
  const factory ChooseFuelUnitsState.initial() = _InitialChooseFuelUnitsState;
  const factory ChooseFuelUnitsState.loading() = LoadingChooseFuelUnitsState;
  const factory ChooseFuelUnitsState.loaded(response) = LoadedChooseFuelUnitsState;
  const factory ChooseFuelUnitsState.error(Object e) = ErrorChooseFuelUnitsState;
}
