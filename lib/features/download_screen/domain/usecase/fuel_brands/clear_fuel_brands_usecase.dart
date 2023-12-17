import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearFuelBrandsUseCase implements UseCase<dynamic, dynamic> {
  final FuelBrandsRepository _fuelBrandsRepository;

  ClearFuelBrandsUseCase(this._fuelBrandsRepository);

  @override
  call({param}) async {
    final response = await _fuelBrandsRepository.clearFuelBrandsFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
