part of 'choose_ride_models_cubit.dart';

@freezed
class ChooseRideModelsState with _$ChooseRideModelsState {
  const factory ChooseRideModelsState.initial() = _InitialChooseRideModelsState;
  const factory ChooseRideModelsState.loading() = LoadingChooseRideModelsState;
  const factory ChooseRideModelsState.loaded(response) = LoadedChooseRideModelsState;
  const factory ChooseRideModelsState.error(Object e) = ErrorChooseRideModelsState;
}
