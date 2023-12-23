
abstract class ModelGenerationSpecificationKeysRepository{
  getModelGenerationSpecificationKeys({required String lang,required tableDefinitions});
  clearModelGenerationSpecificationKeysFromLocalDB({required String tableName,required languageId});
  saveModelGenerationSpecificationKeysInLocalDatabase({required String tableName,required dynamic values});
}