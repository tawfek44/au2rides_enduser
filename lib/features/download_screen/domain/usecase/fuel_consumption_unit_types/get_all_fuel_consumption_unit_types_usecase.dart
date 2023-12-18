import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';
import '../../repository/fuel_consumption_unit_types_repository.dart';

@injectable
class GetAllFuelConsumptionUnitTypesUseCase
    implements UseCase<dynamic, dynamic> {
  final FuelConsumptionUnitTypesRepository _fuelConsumptionUnitTypesRepository;

  GetAllFuelConsumptionUnitTypesUseCase(
      this._fuelConsumptionUnitTypesRepository);

  @override
  call({param}) async {
    final response =
        await _fuelConsumptionUnitTypesRepository.getFuelConsumptionUnitTypes(
            lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
