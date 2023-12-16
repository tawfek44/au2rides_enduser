
abstract class ReminderTypeServiceRepository{
  getReminderTypeServiceTypes({required String lang,required tableDefinitions});
  clearReminderTypeServiceFromLocalDB({required String tableName,required languageId});
  saveReminderTypeServiceInLocalDatabase({required String tableName,required dynamic values});
}