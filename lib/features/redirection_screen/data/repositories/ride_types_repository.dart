import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/currency_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/gender_data_source.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/ride_types_data_source.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/weather_units_data_source.dart';
import 'package:au2rides/features/redirection_screen/data/models/weather_units_model/weather_units_model.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/ride_types_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/weather_measuring_units_repository.dart';
import '../models/country/country_model.dart';

@Injectable(as: RideTypesRepository)
class RideTypesRepositoryImpl extends RideTypesRepository {
  final RideTypesDataSource _rideTypesDataSource;

  RideTypesRepositoryImpl(this._rideTypesDataSource);

  @override
  clearRideTypesDataInLocalDB({required tableName}) async {
   final response = await _rideTypesDataSource.clearAllRideTypesDataFromLocalDb(tableName: tableName);
   return response;
  }

  @override
  downloadRideTypesFromNetworkDB({required tableDefinitions, required appLang}) async {
    final response = await _rideTypesDataSource.downloadRideTypesDataFromNetworkDb(tableDefinitions:tableDefinitions,appLang:appLang );
    return response;
  }

  @override
  saveRideTypesDataInLocalDB({required values, required tableName}) async {
    final response = await _rideTypesDataSource.saveRideTypesDataInLocalDb(values: values,tableName: tableName);
    return response;
  }



}
