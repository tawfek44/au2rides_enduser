import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveDepartmentServiceItemsInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final DepartmentServiceItemsRepository _departmentServiceItemsRepository;

  SaveDepartmentServiceItemsInLocalDbUseCase(
      this._departmentServiceItemsRepository);

  @override
  Future call({param}) async {
    final response = await _departmentServiceItemsRepository
        .saveDepartmentServiceItemsInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
