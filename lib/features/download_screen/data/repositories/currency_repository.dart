import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/repository/currency_repository.dart';
import '../datasources/currency_datasource.dart';
import '../models/country/country_model.dart';

@Injectable(as: CurrencyRepository)
class CurrencyRepositoryImpl extends CurrencyRepository {
  final CurrencyDataSource _currencyDataSource;

  CurrencyRepositoryImpl(this._currencyDataSource);

  @override
  clearCurrenciesFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _currencyDataSource.deleteAllCurrencyInDatabase(
      tableName: tableName,
      languageId: languageId
    );
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
