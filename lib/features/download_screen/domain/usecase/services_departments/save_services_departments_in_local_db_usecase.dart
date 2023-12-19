import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveServiceDepartmentsInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final ServicesDepartmentsRepository _departmentsRepository;

  SaveServiceDepartmentsInLocalDbUseCase(this._departmentsRepository);

  @override
  Future call({param}) async {
    final response =
        await _departmentsRepository.saveServicesDepartmentsInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
