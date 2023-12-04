
abstract class CurrencyRepository{
  getCurrencies({required String lang,required tableDefinitions});
  clearCurrenciesFromLocalDB({required String tableName});
  saveCurrenciesInLocalDatabase({required String tableName,required dynamic values});
}