part of 'acquisition_types_cubit.dart';

@freezed
class AcquisitionTypesState with _$AcquisitionTypesState {
  const factory AcquisitionTypesState.initial() = _InitialAcquisitionTypesState;
  const factory AcquisitionTypesState.loading() = AcquisitionTypesStateLoading;
  const factory AcquisitionTypesState.loaded(currencyResponse) = AcquisitionTypesStateLoaded;
  const factory AcquisitionTypesState.error(Object e) = AcquisitionTypesStateError;
}
