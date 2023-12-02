import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/currency_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/gender_data_source.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/weather_units_data_source.dart';
import 'package:au2rides/features/redirection_screen/data/models/weather_units_model/weather_units_model.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/weather_measuring_units_repository.dart';
import '../models/country/country_model.dart';

@Injectable(as: WeatherUnitsRepository)
class WeatherUnitsRepositoryImpl extends WeatherUnitsRepository {
  final WeatherUnitsDataSource _weatherUnitsDataSource;

  WeatherUnitsRepositoryImpl(this._weatherUnitsDataSource);

  @override
  clearWeatherUnitsDataInLocalDB({required tableName}) async {
    final response = await _weatherUnitsDataSource
        .clearAllWeatherUnitsDataFromLocalDb(tableName: tableName);
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
