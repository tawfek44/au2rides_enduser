import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/currency_datasource.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../models/country/country_model.dart';

@Injectable(as: CurrencyRepository)
class CurrencyRepositoryImpl extends CurrencyRepository {
  final CurrencyDataSource _currencyDataSource;

  CurrencyRepositoryImpl(this._currencyDataSource);

  @override
  clearCurrenciesFromLocalDB({required String tableName}) async {
    final response = await _currencyDataSource.deleteAllCurrencyInDatabase(
        tableName: tableName);
    return response;
  }

  @override
  getCurrencies({required String lang, required tableDefinitions}) async {
    final response =
        await _currencyDataSource.getAllCurrencyFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveCurrenciesInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _currencyDataSource.saveAllCurrencyInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
