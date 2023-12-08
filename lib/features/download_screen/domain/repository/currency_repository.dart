
abstract class CurrencyRepository{
  getCurrencies({required String lang,required tableDefinitions});
  clearCurrenciesFromLocalDB({required String tableName,required languageId});
  saveCurrenciesInLocalDatabase({required String tableName,required dynamic values});
}