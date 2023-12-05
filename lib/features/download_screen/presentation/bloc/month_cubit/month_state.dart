part of 'month_cubit.dart';

@freezed
class MonthState with _$MonthState {
  const factory MonthState.initial() = _InitialMonth;
  const factory MonthState.loading() = LoadingMonth;
  const factory MonthState.loaded(countriesResponse) = LoadedMonth;
  //const factory CountryState.savedInLocalDB() = SavedInLocalDB;
  const factory MonthState.error(Object e) = ErrorMonth;
}
