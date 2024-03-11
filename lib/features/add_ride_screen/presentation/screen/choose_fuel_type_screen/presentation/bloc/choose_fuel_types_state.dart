part of 'choose_fuel_types_cubit.dart';

@freezed
class ChooseFuelTypesState with _$ChooseFuelTypesState {
  const factory ChooseFuelTypesState.initial() = _InitialChooseFuelTypesState;
  const factory ChooseFuelTypesState.loading() = LoadingChooseFuelTypesState;
  const factory ChooseFuelTypesState.loaded(response) = LoadedChooseFuelTypesState;
  const factory ChooseFuelTypesState.error(Object e) = ErrorChooseFuelTypesState;
}
