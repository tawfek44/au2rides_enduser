
abstract class PressureUnitsRepository{
  clearPressureUnitsDataInLocalDB({required tableName});
  downloadPressureUnitsDataFromNetworkDB({required tableDefinitions,required appLang});
  savePressureUnitsDataInLocalDB({required values,required tableName});
}