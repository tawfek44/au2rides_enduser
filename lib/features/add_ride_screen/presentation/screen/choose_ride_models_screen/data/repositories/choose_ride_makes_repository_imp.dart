import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_ride_models_repository.dart';
import '../data_sources/choose_ride_models_datasource.dart';
@Injectable(as: ChooseRideModelsRepository)
class ChooseRideModelsRepositoryImpl extends ChooseRideModelsRepository{
  final ChooseRideModelsDataSource chooseRideModelsDataSource;

  ChooseRideModelsRepositoryImpl(this.chooseRideModelsDataSource);
  

  @override
  getRideModels({required rideMakeId}) async {
    final response = await chooseRideModelsDataSource.getRideModels(rideMakeId: rideMakeId);
    return response;
  }


}