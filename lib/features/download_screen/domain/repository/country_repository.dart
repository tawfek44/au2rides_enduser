
abstract class CountryRepository{
  getCountries({required String lang,required tableDefinitions});
  clearCountriesFromLocalDB({required String tableName,required languageId});
  saveCountriesInLocalDatabase({required dynamic values});
}