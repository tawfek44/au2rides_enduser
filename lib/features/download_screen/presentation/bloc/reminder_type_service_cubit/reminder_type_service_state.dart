part of 'reminder_type_service_cubit.dart';

@freezed
class ReminderTypeServiceState with _$ReminderTypeServiceState {
  const factory ReminderTypeServiceState.initial() = _InitialReminderTypeServiceState;
  const factory ReminderTypeServiceState.loading() = ReminderTypeServiceStateLoading;
  const factory ReminderTypeServiceState.loaded(response) = ReminderTypeServiceStateLoaded;
  const factory ReminderTypeServiceState.error(Object e) = ReminderTypeServiceStateError;
}
