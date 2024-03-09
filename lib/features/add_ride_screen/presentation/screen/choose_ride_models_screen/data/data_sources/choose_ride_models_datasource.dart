import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/core/storage/network/end_points.dart';
import 'package:au2rides/env.dart';
import 'package:injectable/injectable.dart';


abstract class ChooseRideModelsDataSource {
  getRideModels({required String rideMakeId});
}

@Injectable(as: ChooseRideModelsDataSource)
class ChooseRideModelsSourceImpl implements ChooseRideModelsDataSource {
  @override
  getRideModels({required String rideMakeId}) async {
    final response = await DioClient().getData(endPoint: EndPoints.getRidesModelsEndPoint.replaceAll("###", rideMakeId),
      apiUrl: AppEnvironment.baseAPIUrl,
      lang: getIt<UserRepository>().getUserLanguage,
      authorizationToken: getIt<UserRepository>().getUserAccessToken,);
    return response.value;
  }
}
