
abstract class GenderRepository{
  clearGenderDataInLocalDB({required tableName});
  downloadGenderDataFromNetworkDB({required tableDefinitions,required appLang});
  saveGenderDataInLocalDB({required values,required tableName});
}