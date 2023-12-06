import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class ClearPressureUnitsUseCase implements UseCase<dynamic,String>{
  final PressureUnitsRepository _pressureUnitsRepository;

  ClearPressureUnitsUseCase(this._pressureUnitsRepository);

  @override
   call({String? param}) async {
    final response = await _pressureUnitsRepository.clearPressureUnitsDataInLocalDB(tableName: param!);
    return response;
  }

}