import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveFuelOctaneNumberInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final FuelOctaneNumberRepository _fuelOctaneNumberRepository;

  SaveFuelOctaneNumberInLocalDbUseCase(this._fuelOctaneNumberRepository);

  @override
  Future call({param}) async {
    final response =
        await _fuelOctaneNumberRepository.saveFuelOctaneNumberInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
