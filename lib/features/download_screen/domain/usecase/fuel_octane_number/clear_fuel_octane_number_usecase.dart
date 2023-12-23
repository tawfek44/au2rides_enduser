import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/fuel_octane_number_repository.dart';

@injectable
class ClearFuelOctaneNumberUseCase implements UseCase<dynamic, dynamic> {
  final FuelOctaneNumberRepository _fuelOctaneNumberRepository;

  ClearFuelOctaneNumberUseCase(this._fuelOctaneNumberRepository);

  @override
  call({param}) async {
    final response =
        await _fuelOctaneNumberRepository.clearFuelOctaneNumberFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
