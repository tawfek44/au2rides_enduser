import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../../core/repositories/user_repository.dart';
import '../../../../../env.dart';

abstract class GetUserDataFromNetworkDatasource {
  getUserDataFromNetwork();
}

@Injectable(as: GetUserDataFromNetworkDatasource)
class GetUserDataFromNetworkDatasourceImp implements GetUserDataFromNetworkDatasource {
  @override
  getUserDataFromNetwork() async {
    final response = await DioClient().getData(
        endPoint: userDataEndPoint,
        apiUrl: AppEnvironment.authAPIUrl,
        authorizationToken: getIt<UserRepository>().getAccessToken);
    return response.value;
  }
}
