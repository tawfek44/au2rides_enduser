import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DepartmentServiceItemsRepository)
class DepartmentServiceItemsRepositoryImpl
    extends DepartmentServiceItemsRepository {
  final DepartmentServiceItemsDataSource _departmentServiceItemsDataSource;

  DepartmentServiceItemsRepositoryImpl(this._departmentServiceItemsDataSource);

  @override
  clearDepartmentServiceItemsFromLocalDB(
      {required String tableName, required languageId}) async {
    final response = await _departmentServiceItemsDataSource
        .deleteAllDepartmentServiceItemsInDatabase(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  getDepartmentServiceItems(
      {required String lang, required tableDefinitions}) async {
    final response = await _departmentServiceItemsDataSource
        .getAllDepartmentServiceItemsFromNetworkDatabase(
            lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveDepartmentServiceItemsInLocalDatabase(
      {required String tableName, required values}) async {
    final response = await _departmentServiceItemsDataSource
        .saveAllDepartmentServiceItemsInDatabase(
            tableName: tableName, values: values);
    return response;
  }
}
