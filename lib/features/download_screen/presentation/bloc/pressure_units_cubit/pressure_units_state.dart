part of 'pressure_units_cubit.dart';

@freezed
class PressureUnitsState with _$PressureUnitsState {
  const factory PressureUnitsState.initial() = _InitialPressureUnits;
  const factory PressureUnitsState.loading() = LoadingPressureUnits;
  const factory PressureUnitsState.loaded(countriesResponse) = LoadedPressureUnits;
  const factory PressureUnitsState.error(Object e) = ErrorPressureUnits;
}
