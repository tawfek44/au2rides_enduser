part of 'add_user_in_loca_db_cubit.dart';

@freezed
class AddUserInLocalDbState with _$AddUserInLocalDbState {
  const factory AddUserInLocalDbState.initial() = _InitialAddUserInLocalDbState;
  const factory AddUserInLocalDbState.loading() = LoadingAddUserInLocalDbState;
  const factory AddUserInLocalDbState.loaded(response) = LoadedAddUserInLocalDbState;
  const factory AddUserInLocalDbState.error(e) = ErrorAddUserInLocalDbState;
}
