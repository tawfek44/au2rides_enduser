import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/core/storage/tables/users.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/storage/network/end_points.dart';


abstract class AddRideDataSource {
  addRide({required data});
}
@Injectable(as: AddRideDataSource)
class AddRideDataSourceImpl implements AddRideDataSource {
  @override
  addRide({required data}) async {
    final response = await DioClient().postData(
      lang: getIt<UserRepository>().getUserLanguage,
      endPoint:  EndPoints.addRideEndPoint,
      data: data,
      apiUrl: AppEnvironment.baseAPIUrl,
      authorizationToken: getIt<UserRepository>().getAccessToken,
    );
    return response.value;
  }
}
