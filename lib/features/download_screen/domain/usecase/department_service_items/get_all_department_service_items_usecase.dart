import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllDepartmentServiceItemsUseCase implements UseCase<dynamic, dynamic> {
  final DepartmentServiceItemsRepository _departmentServiceItemsRepository;

  GetAllDepartmentServiceItemsUseCase(this._departmentServiceItemsRepository);

  @override
  call({param}) async {
    final response = await _departmentServiceItemsRepository
        .getDepartmentServiceItems(lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
