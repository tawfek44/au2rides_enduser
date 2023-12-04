part of 'currency_cubit.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.initial() = _InitialCurrency;
  const factory CurrencyState.loading() = CurrencyLoading;
  const factory CurrencyState.loaded(currencyResponse) = CurrecnyLoaded;
  //const factory CountryState.savedInLocalDB() = SavedInLocalDB;
  const factory CurrencyState.error(Object e) = CurrencyError;
}
