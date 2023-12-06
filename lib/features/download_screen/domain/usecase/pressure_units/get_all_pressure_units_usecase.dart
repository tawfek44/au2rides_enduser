import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';
import '../../repository/pressure_units_repository.dart';

@injectable
class GetAllPressureUnitsUseCase implements UseCase<dynamic, dynamic> {
  final PressureUnitsRepository _pressureUnitsRepository;

  GetAllPressureUnitsUseCase(this._pressureUnitsRepository);

  @override
  call({param}) async {
    final response =
        await _pressureUnitsRepository.downloadPressureUnitsDataFromNetworkDB(
            tableDefinitions: param[1], appLang: param[0]);
    return response;
  }
}
