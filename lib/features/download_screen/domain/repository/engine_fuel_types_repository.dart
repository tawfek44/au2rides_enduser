
abstract class EngineFuelTypesRepository{
  getEngineFuelTypes({required String lang,required tableDefinitions});
  clearEngineFuelTypesFromLocalDB({required String tableName,required languageId});
  saveEngineFuelTypesInLocalDatabase({required String tableName,required dynamic values});
}