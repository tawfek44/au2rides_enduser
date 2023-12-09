
abstract class AcquisitionTypesRepository{
  getAcquisitionTypes({required String lang,required tableDefinitions});
  clearAcquisitionTypesFromLocalDB({required String tableName,required languageId});
  saveAcquisitionTypesInLocalDatabase({required String tableName,required dynamic values});
}