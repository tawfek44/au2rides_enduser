import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';
import '../../repository/engine_fuel_types_repository.dart';

@injectable
class GetAllEngineFuelTypesUseCase implements UseCase<dynamic,dynamic>{
  final EngineFuelTypesRepository _engineFuelTypesRepository;

  GetAllEngineFuelTypesUseCase(this._engineFuelTypesRepository);

  @override
   call({param}) async {
    final response = await _engineFuelTypesRepository.getEngineFuelTypes(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}