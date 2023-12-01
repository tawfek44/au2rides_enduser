part of 'gender_cubit.dart';

@freezed
class GenderState with _$GenderState {
  const factory GenderState.initial() = _InitialGender;
  const factory GenderState.loading() = GenderLoading;
  const factory GenderState.loaded(currencyResponse) = GenderLoaded;
  const factory GenderState.error(Object e) = GenderError;
}
