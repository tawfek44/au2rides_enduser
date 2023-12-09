
abstract class MetricUnitsRepository{
  getMetricUnits({required String lang,required tableDefinitions});
  clearMetricUnitsFromLocalDB({required String tableName,required languageId});
  saveMetricUnitsInLocalDatabase({required String tableName,required dynamic values});
}