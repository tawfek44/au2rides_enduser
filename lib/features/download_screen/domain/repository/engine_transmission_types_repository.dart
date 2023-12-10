
abstract class EngineTransmissionTypesRepository{
  getEngineTransmissionTypes({required String lang,required tableDefinitions});
  clearEngineTransmissionTypesFromLocalDB({required String tableName,required languageId});
  saveEngineTransmissionTypesInLocalDatabase({required String tableName,required dynamic values});
}