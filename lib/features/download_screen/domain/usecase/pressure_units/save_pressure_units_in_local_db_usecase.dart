import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SavePressureUnitsInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final PressureUnitsRepository _pressureUnitsRepository;

  SavePressureUnitsInLocalDbUseCase(this._pressureUnitsRepository);

  @override
  Future call({param}) async {
    final response =
        await _pressureUnitsRepository.savePressureUnitsDataInLocalDB(tableName: param[0],values: param[1]);
    return response;
  }
}
