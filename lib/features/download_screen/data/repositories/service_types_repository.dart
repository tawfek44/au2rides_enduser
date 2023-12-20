import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ServiceTypesRepository)
class ServiceTypesRepositoryImpl extends ServiceTypesRepository {
  final ServiceTypesDataSource _serviceTypesDataSource;

  ServiceTypesRepositoryImpl(this._serviceTypesDataSource);

  @override
  clearServiceTypesFromLocalDB(
      {required String tableName, required languageId}) async {
    final response =
        await _serviceTypesDataSource.deleteAllServiceTypesInDatabase(
        tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getServiceTypes({required String lang, required tableDefinitions}) async {
    final response =
        await _serviceTypesDataSource.getAllServiceTypesFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveServiceTypesInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _serviceTypesDataSource
        .saveAllServiceTypesInDatabase(tableName: tableName, values: values);
    return response;
  }
}
