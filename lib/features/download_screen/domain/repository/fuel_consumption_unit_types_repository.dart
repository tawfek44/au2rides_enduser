
abstract class FuelConsumptionUnitTypesRepository{
  getFuelConsumptionUnitTypes({required String lang,required tableDefinitions});
  clearFuelConsumptionUnitTypesFromLocalDB({required String tableName,required languageId});
  saveFuelConsumptionUnitTypesInLocalDatabase({required String tableName,required dynamic values});
}