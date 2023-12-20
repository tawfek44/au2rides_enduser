import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearServiceTypesUseCase implements UseCase<dynamic, dynamic> {
  final ServiceTypesRepository _serviceTypesRepository;

  ClearServiceTypesUseCase(this._serviceTypesRepository);

  @override
  call({param}) async {
    final response = await _serviceTypesRepository.clearServiceTypesFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
