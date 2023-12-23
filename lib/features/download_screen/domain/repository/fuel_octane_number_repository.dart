
abstract class FuelOctaneNumberRepository{
  getFuelOctaneNumber({required String lang,required tableDefinitions});
  clearFuelOctaneNumberFromLocalDB({required String tableName,required languageId});
  saveFuelOctaneNumberInLocalDatabase({required String tableName,required dynamic values});
}