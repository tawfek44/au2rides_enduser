
abstract class ReminderTypesRepository{
  getReminderTypes({required String lang,required tableDefinitions});
  clearReminderTypesFromLocalDB({required String tableName,required languageId});
  saveReminderTypesInLocalDatabase({required dynamic values,required tableName});
}