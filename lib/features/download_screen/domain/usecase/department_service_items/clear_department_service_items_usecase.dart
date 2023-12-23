import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearDepartmentServiceItemsUseCase implements UseCase<dynamic, dynamic> {
  final DepartmentServiceItemsRepository _departmentServiceItemsRepository;

  ClearDepartmentServiceItemsUseCase(this._departmentServiceItemsRepository);

  @override
  call({param}) async {
    final response = await _departmentServiceItemsRepository
        .clearDepartmentServiceItemsFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
