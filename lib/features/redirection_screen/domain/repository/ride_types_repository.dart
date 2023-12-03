abstract class RideTypesRepository{
  clearRideTypesDataInLocalDB({required tableName});
  downloadRideTypesFromNetworkDB({required tableDefinitions,required appLang});
  saveRideTypesDataInLocalDB({required values,required tableName});
}