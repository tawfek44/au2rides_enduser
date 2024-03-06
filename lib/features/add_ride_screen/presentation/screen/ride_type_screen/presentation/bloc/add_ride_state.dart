part of 'choose_ride_type_cubit.dart';

@freezed
class ChooseRideTypeState with _$ChooseRideTypeState {
  const factory ChooseRideTypeState.initial() = _InitialChooseRideTypeState;
  const factory ChooseRideTypeState.loading() = LoadingChooseRideTypeState;
  const factory ChooseRideTypeState.loaded(response) = LoadedChooseRideTypeState;
  const factory ChooseRideTypeState.error(Object e) = ErrorChooseRideTypeState;
}
