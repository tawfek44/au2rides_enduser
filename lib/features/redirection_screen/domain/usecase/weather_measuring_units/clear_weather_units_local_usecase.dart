import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/weather_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/use_case/use_case.dart';

@injectable
class ClearWeatherUnitsUseCase implements UseCase<dynamic,dynamic>{
  final WeatherUnitsRepository _weatherUnitsRepository;

  ClearWeatherUnitsUseCase(this._weatherUnitsRepository);

  @override
  call({param}) async {
    final response = await _weatherUnitsRepository.clearWeatherUnitsDataInLocalDB(tableName: param);
    return response;
  }

}