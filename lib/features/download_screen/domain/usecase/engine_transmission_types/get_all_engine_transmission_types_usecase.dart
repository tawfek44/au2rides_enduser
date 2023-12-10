import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllEngineTransmissionTypesUseCase implements UseCase<dynamic,dynamic>{
  final EngineTransmissionTypesRepository _engineTransmissionTypesRepository;

  GetAllEngineTransmissionTypesUseCase(this._engineTransmissionTypesRepository);

  @override
   call({param}) async {
    final response = await _engineTransmissionTypesRepository.getEngineTransmissionTypes(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}