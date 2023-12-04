
abstract class CountryRepository{
  getCountries({required String lang,required tableDefinitions});
  clearCountriesFromLocalDB({required String tableName});
  saveCountriesInLocalDatabase({required dynamic values});
}