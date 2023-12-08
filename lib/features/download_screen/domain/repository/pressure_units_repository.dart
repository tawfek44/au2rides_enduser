
abstract class PressureUnitsRepository{
  clearPressureUnitsDataInLocalDB({required tableName,required languageId});
  downloadPressureUnitsDataFromNetworkDB({required tableDefinitions,required appLang});
  savePressureUnitsDataInLocalDB({required values,required tableName});
}