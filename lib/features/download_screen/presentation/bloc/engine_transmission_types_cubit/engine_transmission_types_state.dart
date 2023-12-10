part of 'engine_transmission_types_cubit.dart';

@freezed
class EngineTransmissionTypesState with _$EngineTransmissionTypesState {
  const factory EngineTransmissionTypesState.initial() = _InitialEngineTransmissionTypesState;
  const factory EngineTransmissionTypesState.loading() =EngineTransmissionTypesStateLoading;
  const factory EngineTransmissionTypesState.loaded(currencyResponse) = EngineTransmissionTypesStateLoaded;
  const factory EngineTransmissionTypesState.error(Object e) = EngineTransmissionTypesStateError;
}
