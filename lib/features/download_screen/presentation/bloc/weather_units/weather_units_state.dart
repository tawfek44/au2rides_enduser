part of 'weather_units_cubit.dart';

@freezed
class WeatherUnitsState with _$WeatherUnitsState {
  const factory WeatherUnitsState.initial() = _InitialWeatherUnits;
  const factory WeatherUnitsState.loading() = WeatherUnitsLoading;
  const factory WeatherUnitsState.loaded(Response) = WeatherUnitsLoaded;
  const factory WeatherUnitsState.error(Object e) = WeatherUnitsError;
}
