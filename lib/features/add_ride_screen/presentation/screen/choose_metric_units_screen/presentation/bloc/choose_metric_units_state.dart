part of 'choose_metric_units_cubit.dart';

@freezed
class ChooseMetricUnitsState with _$ChooseMetricUnitsState {
  const factory ChooseMetricUnitsState.initial() = _InitialChooseMetricUnitsState;
  const factory ChooseMetricUnitsState.loading() = LoadingChooseMetricUnitsState;
  const factory ChooseMetricUnitsState.loaded(response) = LoadedChooseMetricUnitsState;
  const factory ChooseMetricUnitsState.error(Object e) = ErrorChooseMetricUnitsState;
}
