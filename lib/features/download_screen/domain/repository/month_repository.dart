
abstract class MonthRepository{
  getMonths({required String lang,required tableDefinitions});
  clearMonthsFromLocalDB({required String tableName,required languageId});
  saveMonthsInLocalDatabase({required dynamic values});
}