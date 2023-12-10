import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class ClearEngineTransmissionTypesUseCase implements UseCase<dynamic, dynamic> {
  final EngineTransmissionTypesRepository _engineTransmissionTypesRepository;

  ClearEngineTransmissionTypesUseCase(this._engineTransmissionTypesRepository);

  @override
  call({param}) async {
    final response = await _engineTransmissionTypesRepository.clearEngineTransmissionTypesFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
