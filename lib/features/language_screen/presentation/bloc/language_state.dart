part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial() = _Initial;
  const factory LanguageState.loading() = Loading;
  const factory LanguageState.loaded(languagesResponse) = Loaded;
  const factory LanguageState.error(Object e) = Error;
}
