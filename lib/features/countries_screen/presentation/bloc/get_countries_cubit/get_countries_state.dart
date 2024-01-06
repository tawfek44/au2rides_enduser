part of 'get_countries_cubit.dart';

@freezed
class GetCountiesState with _$GetCountiesState {
  const factory GetCountiesState.initial() = _InitialGetCountiesState;
  const factory GetCountiesState.loading() = GetCountiesStateLoading;
  const factory GetCountiesState.loaded(response) = GetCountiesStateLoaded;
  const factory GetCountiesState.error(Object e) = GetCountiesStateError;
}
