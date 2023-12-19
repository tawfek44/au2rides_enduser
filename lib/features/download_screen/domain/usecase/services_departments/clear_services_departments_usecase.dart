import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearServicesDepartmentsUseCase implements UseCase<dynamic, dynamic> {
  final ServicesDepartmentsRepository _departmentsRepository;

  ClearServicesDepartmentsUseCase(this._departmentsRepository);

  @override
  call({param}) async {
    final response =
        await _departmentsRepository.clearServicesDepartmentsFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
