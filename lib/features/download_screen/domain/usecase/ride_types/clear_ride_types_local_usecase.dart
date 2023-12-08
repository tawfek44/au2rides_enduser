import 'package:injectable/injectable.dart';

import '../../../../../../core/use_case/use_case.dart';
import '../../repository/ride_types_repository.dart';

@injectable
class ClearRideTypesUseCase implements UseCase<dynamic, dynamic> {
  final RideTypesRepository _rideTypesRepository;

  ClearRideTypesUseCase(this._rideTypesRepository);

  @override
  call({param}) async {
    final response = await _rideTypesRepository.clearRideTypesDataInLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
