import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveFuelBrandInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final FuelBrandsRepository _fuelBrandsRepository;

  SaveFuelBrandInLocalDbUseCase(this._fuelBrandsRepository);

  @override
  Future call({param}) async {
    final response = await _fuelBrandsRepository.saveFuelBrandsInLocalDatabase(
        tableName: param[0], values: param[1]);
    return response;
  }
}
