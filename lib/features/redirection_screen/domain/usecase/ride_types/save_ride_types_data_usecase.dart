import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/ride_types_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/weather_measuring_units_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveRideTypesDataInLocalDbUseCase extends UseCase<dynamic,dynamic>{
  final RideTypesRepository _rideTypesRepository;

  SaveRideTypesDataInLocalDbUseCase(this._rideTypesRepository);

  @override
  Future call({param}) async {
   final response = await _rideTypesRepository.saveRideTypesDataInLocalDB(values: param[1], tableName: param[0]);
   return response;
  }

}