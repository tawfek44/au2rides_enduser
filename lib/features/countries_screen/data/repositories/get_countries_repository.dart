import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart';
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasources/get_countries_datasource.dart';

@Injectable(as: GetCountriesRepository)
class GetCountriesRepositoryImpl extends GetCountriesRepository {
  final GetCountriesDataSource _getCountriesDataSource;

  GetCountriesRepositoryImpl(this._getCountriesDataSource);


  @override
  getCountries({required String tableName, required languageId}) async {
    final response = await _getCountriesDataSource.getCountriesFromDatabase(
        tableName: tableName, where: 'language_id = ?', whereArgs: [languageId]
    );
    return response;
  }
}
