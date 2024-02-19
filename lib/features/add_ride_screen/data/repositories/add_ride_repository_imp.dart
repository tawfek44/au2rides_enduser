import 'package:au2rides/features/add_ride_screen/data/data_sources/add_ride_datasource.dart';
import 'package:au2rides/features/add_ride_screen/domain/repositories/add_ride_repository.dart';
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: AddRideRepository)
class AddRideRepositoryImpl extends AddRideRepository{
  final AddRideDataSource addRideDataSource;

  AddRideRepositoryImpl(this.addRideDataSource);

  @override
  addRide({required data}) async {
    final response = await addRideDataSource.addRide(data: data);
    return response;
  }

}