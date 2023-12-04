import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/weather_measuring_units_repository.dart';

@injectable
class SaveWeatherUnitsDataInLocalDb extends UseCase<dynamic,dynamic>{
  final WeatherUnitsRepository _weatherUnitsRepository;

  SaveWeatherUnitsDataInLocalDb(this._weatherUnitsRepository);

  @override
  Future call({param}) async {
   final response = await _weatherUnitsRepository.saveWeatherUnitsDataInLocalDB(values: param[1], tableName: param[0]);
   return response;
  }

}