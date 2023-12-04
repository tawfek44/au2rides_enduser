import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/gender_repository.dart';
import '../../repository/weather_measuring_units_repository.dart';

@injectable
class DownloadWeatherUnitsUseCase implements UseCase<dynamic,dynamic>{
  final WeatherUnitsRepository _weatherUnitsRepository;

  DownloadWeatherUnitsUseCase(this._weatherUnitsRepository);

  @override
  call({param}) async {
    final response = await _weatherUnitsRepository.downloadWeatherUnitsFromNetworkDB(appLang:param[0] ,tableDefinitions: param[1]);
    return response;
  }

}