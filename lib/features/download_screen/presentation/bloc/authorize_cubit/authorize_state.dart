part of 'authorize_cubit.dart';

@freezed
class AuthorizeState with _$AuthorizeState {
  const factory AuthorizeState.initial() = _InitialAuthorizeState;
  const factory AuthorizeState.loading() = AuthorizeStateLoading;
  const factory AuthorizeState.loaded(currencyResponse) = AuthorizeStateLoaded;
  const factory AuthorizeState.error(Object e) = AuthorizeStateError;
}
