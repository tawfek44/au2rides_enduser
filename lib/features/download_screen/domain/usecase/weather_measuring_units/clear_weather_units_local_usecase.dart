import 'package:injectable/injectable.dart';

import '../../../../../../core/use_case/use_case.dart';
import '../../repository/weather_measuring_units_repository.dart';

@injectable
class ClearWeatherUnitsUseCase implements UseCase<dynamic, dynamic> {
  final WeatherUnitsRepository _weatherUnitsRepository;

  ClearWeatherUnitsUseCase(this._weatherUnitsRepository);

  @override
  call({param}) async {
    final response =
        await _weatherUnitsRepository.clearWeatherUnitsDataInLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
