part of 'country_cubit.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.initial() = _Initial;
  const factory CountryState.loading() = Loading;
  const factory CountryState.loaded(countriesResponse) = Loaded;
  //const factory CountryState.savedInLocalDB() = SavedInLocalDB;
  const factory CountryState.error(Object e) = Error;
}
