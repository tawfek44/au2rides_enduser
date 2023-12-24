part of 'workflow_statuses_cubit.dart';

@freezed
class WorkflowStatusesState with _$WorkflowStatusesState {
  const factory WorkflowStatusesState.initial() = _InitialWorkflowStatusesState;
  const factory WorkflowStatusesState.loading() = WorkflowStatusesStateLoading;
  const factory WorkflowStatusesState.loaded(response) = WorkflowStatusesStateLoaded;
  const factory WorkflowStatusesState.error(Object e) = WorkflowStatusesStateError;
}
