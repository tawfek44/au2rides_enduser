import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/fuel_consumption_unit_types_repository.dart';

@injectable
class ClearFuelConsumptionUnitTypesUseCase
    implements UseCase<dynamic, dynamic> {
  final FuelConsumptionUnitTypesRepository _fuelConsumptionUnitTypesRepository;

  ClearFuelConsumptionUnitTypesUseCase(
      this._fuelConsumptionUnitTypesRepository);

  @override
  call({param}) async {
    final response = await _fuelConsumptionUnitTypesRepository
        .clearFuelConsumptionUnitTypesFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
