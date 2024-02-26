import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllFuelMeasuringUnitsUseCase implements UseCase<dynamic,dynamic>{
  final FuelMeasuringUnitsRepository _fuelMeasuringUnitsRepository;

  GetAllFuelMeasuringUnitsUseCase(this._fuelMeasuringUnitsRepository);

  @override
   call({param}) async {
    final response = await _fuelMeasuringUnitsRepository.getFuelMeasuringUnitsTypes(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}