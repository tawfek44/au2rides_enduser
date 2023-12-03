import 'package:au2rides/features/redirection_screen/domain/repository/ride_types_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/weather_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/gender_repository.dart';

@injectable
class DownloadRideTypesUseCase implements UseCase<dynamic,dynamic>{
  final RideTypesRepository _rideTypesRepository;

  DownloadRideTypesUseCase(this._rideTypesRepository);

  @override
  call({param}) async {
    final response = await _rideTypesRepository.downloadRideTypesFromNetworkDB(appLang:param[0] ,tableDefinitions: param[1]);
    return response;
  }

}