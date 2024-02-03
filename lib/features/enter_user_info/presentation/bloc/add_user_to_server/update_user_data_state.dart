part of 'update_user_data_cubit.dart';

@freezed
class UpdateUserDataState with _$UpdateUserDataState {
  const factory UpdateUserDataState.initial() = _InitialUpdateUserDataState;
  const factory UpdateUserDataState.loading() = LoadingUpdateUserDataState;
  const factory UpdateUserDataState.loaded(response) = LoadedUpdateUserDataState;
  const factory UpdateUserDataState.error(e) = ErrorUpdateUserDataState;
}
