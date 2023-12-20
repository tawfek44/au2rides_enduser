import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllServiceTypesUseCase implements UseCase<dynamic,dynamic>{
  final ServiceTypesRepository _serviceTypesRepository;

  GetAllServiceTypesUseCase(this._serviceTypesRepository);

  @override
   call({param}) async {
    final response = await _serviceTypesRepository.getServiceTypes(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}