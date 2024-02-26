
abstract class FuelMeasuringUnitsRepository{
  getFuelMeasuringUnitsTypes({required String lang,required tableDefinitions});
  clearFuelMeasuringUnitsFromLocalDB({required String tableName,required languageId});
  saveFuelMeasuringUnitsInLocalDatabase({required String tableName,required dynamic values});
}