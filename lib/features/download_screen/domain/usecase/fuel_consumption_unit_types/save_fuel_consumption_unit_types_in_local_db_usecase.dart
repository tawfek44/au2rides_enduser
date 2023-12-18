import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';
import '../../repository/fuel_consumption_unit_types_repository.dart';

@injectable
class SaveFuelConsumptionUnitTypesInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final FuelConsumptionUnitTypesRepository _consumptionUnitTypesRepository;

  SaveFuelConsumptionUnitTypesInLocalDbUseCase(
      this._consumptionUnitTypesRepository);

  @override
  Future call({param}) async {
    final response = await _consumptionUnitTypesRepository
        .saveFuelConsumptionUnitTypesInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
