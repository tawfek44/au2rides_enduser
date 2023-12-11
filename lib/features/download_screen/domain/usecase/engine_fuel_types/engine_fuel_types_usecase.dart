import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/engine_fuel_types_repository.dart';


@injectable
class ClearEngineFuelTypesUseCase implements UseCase<dynamic, dynamic> {
  final EngineFuelTypesRepository _engineFuelTypesRepository;

  ClearEngineFuelTypesUseCase(this._engineFuelTypesRepository);

  @override
  call({param}) async {
    final response = await _engineFuelTypesRepository
        .clearEngineFuelTypesFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
