import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllFuelBrandUseCase implements UseCase<dynamic,dynamic>{
  final FuelBrandsRepository _fuelBrandsRepository;

  GetAllFuelBrandUseCase(this._fuelBrandsRepository);

  @override
   call({param}) async {
    final response = await _fuelBrandsRepository.getFuelBrands(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}