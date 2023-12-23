import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllFuelOctaneNumberUseCase implements UseCase<dynamic, dynamic> {
  final FuelOctaneNumberRepository _fuelOctaneNumberRepository;

  GetAllFuelOctaneNumberUseCase(this._fuelOctaneNumberRepository);

  @override
  call({param}) async {
    final response = await _fuelOctaneNumberRepository.getFuelOctaneNumber(
        lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
