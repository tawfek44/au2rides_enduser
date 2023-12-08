
abstract class GenderRepository{
  clearGenderDataInLocalDB({required tableName,required languageId});
  downloadGenderDataFromNetworkDB({required tableDefinitions,required appLang});
  saveGenderDataInLocalDB({required values,required tableName});
}