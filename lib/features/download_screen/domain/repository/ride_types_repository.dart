abstract class RideTypesRepository{
  clearRideTypesDataInLocalDB({required tableName,required languageId});
  downloadRideTypesFromNetworkDB({required tableDefinitions,required appLang});
  saveRideTypesDataInLocalDB({required values,required tableName});
}