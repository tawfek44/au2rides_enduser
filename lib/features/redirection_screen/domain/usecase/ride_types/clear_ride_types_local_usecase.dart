import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/ride_types_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/weather_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/use_case/use_case.dart';

@injectable
class ClearRideTypesUseCase implements UseCase<dynamic,dynamic>{
  final RideTypesRepository _rideTypesRepository;

  ClearRideTypesUseCase(this._rideTypesRepository);

  @override
  call({param}) async {
    final response = await _rideTypesRepository.clearRideTypesDataInLocalDB(tableName: param);
    return response;
  }

}