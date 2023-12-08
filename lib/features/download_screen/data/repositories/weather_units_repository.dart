import 'package:injectable/injectable.dart';

import '../../domain/repository/weather_measuring_units_repository.dart';
import '../datasources/weather_units_data_source.dart';

@Injectable(as: WeatherUnitsRepository)
class WeatherUnitsRepositoryImpl extends WeatherUnitsRepository {
  final WeatherUnitsDataSource _weatherUnitsDataSource;

  WeatherUnitsRepositoryImpl(this._weatherUnitsDataSource);

  @override
  clearWeatherUnitsDataInLocalDB({required tableName,required languageId}) async {
    final response = await _weatherUnitsDataSource
        .clearAllWeatherUnitsDataFromLocalDb(tableName: tableName,languageId: languageId);
    return response;
  }

  @override
  downloadWeatherUnitsFromNetworkDB(
      {required tableDefinitions, required appLang}) async {
    final response =
        await _weatherUnitsDataSource.downloadWeatherUnitsDataFromNetworkDb(tableDefinitions: tableDefinitions,appLang: appLang);
    return response;
  }

  @override
  saveWeatherUnitsDataInLocalDB({required values, required tableName}) async {
    final response =
        await _weatherUnitsDataSource.saveWeatherUnitsDataInLocalDb(tableName: tableName,values: values);
    return response;
  }
}
