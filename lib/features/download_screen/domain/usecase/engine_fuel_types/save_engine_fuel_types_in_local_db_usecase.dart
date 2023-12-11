import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/engine_fuel_types_repository.dart';

@injectable
class SaveEngineFuelTypesInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final EngineFuelTypesRepository _engineFuelTypesRepository;

  SaveEngineFuelTypesInLocalDbUseCase(
      this._engineFuelTypesRepository);

  @override
  Future call({param}) async {
    final response = await _engineFuelTypesRepository
        .saveEngineFuelTypesInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
