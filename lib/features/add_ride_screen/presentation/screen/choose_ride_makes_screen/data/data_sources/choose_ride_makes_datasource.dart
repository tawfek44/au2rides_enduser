import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/core/storage/network/end_points.dart';
import 'package:au2rides/env.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/storage/local/table_names.dart';


abstract class ChooseRideMakesDataSource {
  getRideMakes({required int rideTypeId});
}

@Injectable(as: ChooseRideMakesDataSource)
class ChooseRideMakesSourceImpl implements ChooseRideMakesDataSource {
  @override
  getRideMakes({required int rideTypeId}) async {
    final response = await DioClient().getData(endPoint: EndPoints.getRideMakesEndPoint+rideTypeId.toString(),
      apiUrl: AppEnvironment.baseAPIUrl,
      lang: getIt<UserRepository>().getUserLanguage,
      authorizationToken: getIt<UserRepository>().getUserAccessToken,);
    return response.value;
  }
}