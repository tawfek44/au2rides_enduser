
abstract class FuelBrandsRepository{
  getFuelBrands({required String lang,required tableDefinitions});
  clearFuelBrandsFromLocalDB({required String tableName,required languageId});
  saveFuelBrandsInLocalDatabase({required String tableName,required dynamic values});
}