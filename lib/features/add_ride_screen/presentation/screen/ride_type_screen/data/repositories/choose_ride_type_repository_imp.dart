
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChooseRideTypeRepository)
class ChooseRideTypeRepositoryImpl extends ChooseRideTypeRepository{
  final ChooseRideTypeDataSource chooseRideTypeDataSource;

  ChooseRideTypeRepositoryImpl(this.chooseRideTypeDataSource);


  @override
  chooseRideType() async {
    final response = await chooseRideTypeDataSource.chooseRideType();
    return response;
  }

}