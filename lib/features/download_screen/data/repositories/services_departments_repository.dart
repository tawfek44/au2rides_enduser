import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ServicesDepartmentsRepository)
class ServiceDepartmentsRepositoryImpl extends ServicesDepartmentsRepository {
  final ServiceDepartmentsDataSource _serviceDepartmentsDataSource;

  ServiceDepartmentsRepositoryImpl(this._serviceDepartmentsDataSource);

  @override
  clearServicesDepartmentsFromLocalDB({required String tableName, required languageId}) async {
    final response = await _serviceDepartmentsDataSource.deleteAllServiceDepartmentsInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getServicesDepartments({required String lang, required tableDefinitions}) async {
    final response =
        await _serviceDepartmentsDataSource.getAllServiceDepartmentsFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveServicesDepartmentsInLocalDatabase({required String tableName, required values}) async {
    final response = await _serviceDepartmentsDataSource
        .saveAllServiceDepartmentsInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
