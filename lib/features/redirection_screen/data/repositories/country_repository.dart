import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../models/country/country_model.dart';

@Injectable(as: CountryRepository)
class CountryRepositoryImpl extends CountryRepository {
  final CountryDataSource _countryDataSource;

  CountryRepositoryImpl(this._countryDataSource);

  @override
  getCountries({required String lang, required tableDefinitions}) async {
    final response = await _countryDataSource.getAllCountriesFromAPI(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveCountriesInLocalDatabase({required dynamic values}) async {
    final response =
        await _countryDataSource.saveAllCountriesInDatabase(values: values);
    return response;
  }

  @override
  clearCountriesFromLocalDB({required String tableName}) async {
    final response = await _countryDataSource.deleteAllCountriesInDatabase(
        tableName: tableName);
    return response;
  }
}
