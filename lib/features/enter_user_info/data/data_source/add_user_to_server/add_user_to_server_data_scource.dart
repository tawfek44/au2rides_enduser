import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../../core/repositories/user_repository.dart';
import '../../../../../core/storage/network/end_points.dart';
import '../../../../../env.dart';

abstract class AddUserToNetworkDatasource {
  addUserToNetwork({required data, required language});
}

@Injectable(as: AddUserToNetworkDatasource)
class AddUserToNetworkDatasourceImp
    implements AddUserToNetworkDatasource {
  @override
  addUserToNetwork({required data, required language}) async {
    final response = await DioClient().postData(
      endPoint: EndPoints.updateUserInfoEndPoint,
      apiUrl: AppEnvironment.authAPIUrl,
      data: data,
      lang: language,
      authorizationToken: getIt<UserRepository>().getAccessToken,
    );
    return response.value;
  }
}
