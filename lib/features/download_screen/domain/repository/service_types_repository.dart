
abstract class ServiceTypesRepository{
  getServiceTypes({required String lang,required tableDefinitions});
  clearServiceTypesFromLocalDB({required String tableName,required languageId});
  saveServiceTypesInLocalDatabase({required String tableName,required dynamic values});
}