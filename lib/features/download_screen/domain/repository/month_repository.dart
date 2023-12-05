
abstract class MonthRepository{
  getMonths({required String lang,required tableDefinitions});
  clearMonthsFromLocalDB({required String tableName});
  saveMonthsInLocalDatabase({required dynamic values});
}