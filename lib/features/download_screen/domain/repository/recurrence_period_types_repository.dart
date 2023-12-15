
abstract class RecurrencePeriodTypesRepository{
  getRecurrencePeriodTypes({required String lang,required tableDefinitions});
  clearRecurrencePeriodTypesFromLocalDB({required String tableName,required languageId});
  saveRecurrencePeriodTypesInLocalDatabase({required String tableName,required dynamic values});
}