part of 'choose_ride_makes_cubit.dart';

@freezed
class ChooseRideMakesState with _$ChooseRideMakesState {
  const factory ChooseRideMakesState.initial() = _InitialChooseRideMakesState;
  const factory ChooseRideMakesState.loading() = LoadingChooseRideMakesState;
  const factory ChooseRideMakesState.loaded(response) = LoadedChooseRideMakesState;
  const factory ChooseRideMakesState.error(Object e) = ErrorChooseRideMakesState;
}
