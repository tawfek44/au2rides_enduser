abstract class WeatherUnitsRepository{
  clearWeatherUnitsDataInLocalDB({required tableName});
  downloadWeatherUnitsFromNetworkDB({required tableDefinitions,required appLang});
  saveWeatherUnitsDataInLocalDB({required values,required tableName});
}