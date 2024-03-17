part of 'choose_ride_model_trim_cubit.dart';

@freezed
class ChooseRideModelTrimState with _$ChooseRideModelTrimState {
  const factory ChooseRideModelTrimState.initial() = _InitialChooseRideModelTrimState;
  const factory ChooseRideModelTrimState.loading() = LoadingChooseRideModelTrimState;
  const factory ChooseRideModelTrimState.loaded(response) = LoadedChooseRideModelTrimState;
  const factory ChooseRideModelTrimState.error(Object e) = ErrorChooseRideModelTrimState;
}
