part of 'reminder_types_cubit.dart';

@freezed
class ReminderTypesState with _$ReminderTypesState {
  const factory ReminderTypesState.initial() = _InitialReminderTypes;
  const factory ReminderTypesState.loading() = LoadingReminderTypes;
  const factory ReminderTypesState.loaded(response) = LoadedReminderTypes;
  const factory ReminderTypesState.error(Object e) = ErrorReminderTypes;
}
