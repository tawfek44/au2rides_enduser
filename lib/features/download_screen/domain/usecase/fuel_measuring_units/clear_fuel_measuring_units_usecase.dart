import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class ClearFuelMeasuringUnitsUseCase implements UseCase<dynamic, dynamic> {
  final FuelMeasuringUnitsRepository _fuelMeasuringUnitsRepository;

  ClearFuelMeasuringUnitsUseCase(this._fuelMeasuringUnitsRepository);

  @override
  call({param}) async {
    final response = await _fuelMeasuringUnitsRepository.clearFuelMeasuringUnitsFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
