import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_ride_makes_repository.dart';
import '../data_sources/choose_ride_makes_datasource.dart';
@Injectable(as: ChooseRideMakesRepository)
class ChooseRideMakesRepositoryImpl extends ChooseRideMakesRepository{
  final ChooseRideMakesDataSource chooseRideMakesDataSource;

  ChooseRideMakesRepositoryImpl(this.chooseRideMakesDataSource);
  

  @override
  chooseRideMakes({required rideTypeId}) async {
    final response = await chooseRideMakesDataSource.getRideMakes(rideTypeId: rideTypeId);
    return response;
  }

}