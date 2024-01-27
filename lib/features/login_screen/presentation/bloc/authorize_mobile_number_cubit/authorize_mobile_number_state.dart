part of 'authorize_mobile_number_cubit.dart';

@freezed
class AuthorizeMobileNumberState with _$AuthorizeMobileNumberState {
  const factory AuthorizeMobileNumberState.initial() = _InitialAuthorizeMobileNumberState;
  const factory AuthorizeMobileNumberState.loading() = AuthorizeMobileNumberStateLoading;
  const factory AuthorizeMobileNumberState.loaded(response) = AuthorizeMobileNumberStateLoaded;
  const factory AuthorizeMobileNumberState.error(Object e) = AuthorizeMobileNumberStateError;
}
