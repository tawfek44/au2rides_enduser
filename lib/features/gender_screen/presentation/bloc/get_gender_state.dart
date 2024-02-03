part of 'get_gender_cubit.dart';

@freezed
class GetGenderState with _$GetGenderState {
  const factory GetGenderState.initial() = _InitialGetGenderState;
  const factory GetGenderState.loading() = LoadingGetGenderState;
  const factory GetGenderState.loaded(response) = LoadedGetGenderState;
  const factory GetGenderState.error(e) = ErrorGetGenderState;
}
