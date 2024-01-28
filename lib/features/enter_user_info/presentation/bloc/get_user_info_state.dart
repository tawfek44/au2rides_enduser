part of 'get_user_info_cubit.dart';

@freezed
class GetUserInfoState with _$GetUserInfoState {
  const factory GetUserInfoState.initial() = _InitialGetUserInfoState;
  const factory GetUserInfoState.loading() = LoadingGetUserInfoState;
  const factory GetUserInfoState.loaded(response) = LoadedGetUserInfoState;
  const factory GetUserInfoState.error(Object e) = ErrorGetUserInfoState;
}
