import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_ride_model_trim_repository.dart';
import '../data_sources/choose_model_trim_datasource.dart';
@Injectable(as: ChooseRideModelTrimRepository)
class ChooseRideModelTrimRepositoryImpl extends ChooseRideModelTrimRepository{
  final ChooseRideModelTrimDataSource chooseRideModelTrimDataSource;

  ChooseRideModelTrimRepositoryImpl(this.chooseRideModelTrimDataSource);
  

  @override
  getRideModelTrim({required rideMakesId}) async {
    final response = await chooseRideModelTrimDataSource.getRideModelTrim(rideMakesModelId: rideMakesId);
    return response;
  }


}