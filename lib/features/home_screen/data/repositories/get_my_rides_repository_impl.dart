import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart';
import 'package:au2rides/features/home_screen/data/data_sources/get_rides_datasource.dart';
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetMyRidesRepository)
class GetMyRidesRepositoryImpl extends GetMyRidesRepository {
  final GetRidesDataSource getRidesDataSource;

  GetMyRidesRepositoryImpl(this.getRidesDataSource);


  @override
  getMyRides() async {
    final response = await getRidesDataSource.getAllRidesFromNetworkDatabase();
    return response;
  }
}
