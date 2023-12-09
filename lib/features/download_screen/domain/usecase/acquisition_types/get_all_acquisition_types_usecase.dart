import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllAcquisitionTypesUseCase implements UseCase<dynamic,dynamic>{
  final AcquisitionTypesRepository _acquisitionTypesRepository;

  GetAllAcquisitionTypesUseCase(this._acquisitionTypesRepository);

  @override
   call({param}) async {
    final response = await _acquisitionTypesRepository.getAcquisitionTypes(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}