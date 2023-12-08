abstract class WeatherUnitsRepository{
  clearWeatherUnitsDataInLocalDB({required tableName,required languageId});
  downloadWeatherUnitsFromNetworkDB({required tableDefinitions,required appLang});
  saveWeatherUnitsDataInLocalDB({required values,required tableName});
}