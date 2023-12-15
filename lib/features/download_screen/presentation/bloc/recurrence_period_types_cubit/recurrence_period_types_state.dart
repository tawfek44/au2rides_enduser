part of 'recurrence_period_types_cubit.dart';

@freezed
class RecurrencePeriodTypesState with _$RecurrencePeriodTypesState {
  const factory RecurrencePeriodTypesState.initial() = _InitialRecurrencePeriodTypes;
  const factory RecurrencePeriodTypesState.loading() =RecurrencePeriodTypesStateLoading;
  const factory RecurrencePeriodTypesState.loaded(response) = RecurrencePeriodTypesStateLoaded;
  const factory RecurrencePeriodTypesState.error(Object e) = RecurrencePeriodTypesStateError;
}
