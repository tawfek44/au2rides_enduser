import 'package:injectable/injectable.dart';
import '../../domain/repository/country_repository.dart';
import '../datasources/country_datasource.dart';

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
  clearCountriesFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _countryDataSource.deleteAllCountriesInDatabase(
      tableName: tableName,
      languageId: languageId
    );
    return response;
  }
}
