part of 'metric_units_cubit.dart';

@freezed
class MetricUnitsState with _$MetricUnitsState {
  const factory MetricUnitsState.initial() = _InitialMetricUnitsState;
  const factory MetricUnitsState.loading() = MetricUnitsStateLoading;
  const factory MetricUnitsState.loaded(currencyResponse) = MetricUnitsStateLoaded;
  const factory MetricUnitsState.error(Object e) = MetricUnitsStateError;
}
