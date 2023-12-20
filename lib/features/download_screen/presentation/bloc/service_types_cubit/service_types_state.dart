part of 'service_types_cubit.dart';

@freezed
class ServiceTypesState with _$ServiceTypesState {
  const factory ServiceTypesState.initial() = _InitialAServiceTypesState;
  const factory ServiceTypesState.loading() = ServiceTypesStateLoading;
  const factory ServiceTypesState.loaded(response) = ServiceTypesStateLoaded;
  const factory ServiceTypesState.error(Object e) = ServiceTypesStateError;
}
