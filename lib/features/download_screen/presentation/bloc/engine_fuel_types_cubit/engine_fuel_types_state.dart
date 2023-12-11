part of 'engine_fuel_types_cubit.dart';

@freezed
class EngineFuelTypesState with _$EngineFuelTypesState {
  const factory EngineFuelTypesState.initial() = _InitialEngineFuelTypesState;
  const factory EngineFuelTypesState.loading() =EngineFuelTypesStateLoading;
  const factory EngineFuelTypesState.loaded(response) = EngineFuelTypesStateLoaded;
  const factory EngineFuelTypesState.error(Object e) = EngineFuelTypesStateError;
}
