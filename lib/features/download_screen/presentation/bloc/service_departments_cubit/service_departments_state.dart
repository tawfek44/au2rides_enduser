part of 'service_departments_cubit.dart';

@freezed
class ServiceDepartmentsState with _$ServiceDepartmentsState {
  const factory ServiceDepartmentsState.initial() = _InitialServiceDepartmentsState;
  const factory ServiceDepartmentsState.loading() = ServiceDepartmentsStateLoading;
  const factory ServiceDepartmentsState.loaded(currencyResponse) = ServiceDepartmentsStateLoaded;
  const factory ServiceDepartmentsState.error(Object e) = ServiceDepartmentsStateError;
}
