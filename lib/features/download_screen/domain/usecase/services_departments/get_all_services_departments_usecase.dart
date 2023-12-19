import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/services_departments_repository.dart';

@injectable
class GetAllServicesDepartmentsUseCase implements UseCase<dynamic,dynamic>{
  final ServicesDepartmentsRepository _departmentsRepository;

  GetAllServicesDepartmentsUseCase(this._departmentsRepository);

  @override
   call({param}) async {
    final response = await _departmentsRepository.getServicesDepartments(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}