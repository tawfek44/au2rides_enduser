part of 'department_service_items_cubit.dart';

@freezed
class DepartmentServiceItemsState with _$DepartmentServiceItemsState {
  const factory DepartmentServiceItemsState.initial() = _InitialDepartmentServiceItemsState;
  const factory DepartmentServiceItemsState.loading() = DepartmentServiceItemsStateLoading;
  const factory DepartmentServiceItemsState.loaded(response) = DepartmentServiceItemsStateLoaded;
  const factory DepartmentServiceItemsState.error(Object e) = DepartmentServiceItemsStateError;
}
