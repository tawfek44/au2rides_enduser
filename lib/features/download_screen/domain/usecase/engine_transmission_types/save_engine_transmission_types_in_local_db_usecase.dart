import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveEngineTransmissionTypesInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final EngineTransmissionTypesRepository _engineTransmissionTypesRepository;

  SaveEngineTransmissionTypesInLocalDbUseCase(
      this._engineTransmissionTypesRepository);

  @override
  Future call({param}) async {
    final response = await _engineTransmissionTypesRepository
        .saveEngineTransmissionTypesInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
