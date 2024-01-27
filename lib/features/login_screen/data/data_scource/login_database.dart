import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../env.dart';


abstract class AuthorizeMobileNumberDatasource{
  authorizeMobileNumber({required mobileNumberAuthorizationBody,required language});
}
@Injectable(as: AuthorizeMobileNumberDatasource)
class LoginDatasourceImp implements AuthorizeMobileNumberDatasource{
  @override
  authorizeMobileNumber({required mobileNumberAuthorizationBody,required language}) async {
    final response = await DioClient().postData(
      authorizationToken: getIt<UserRepository>().getAccessToken,
      data: mobileNumberAuthorizationBody,
      apiUrl: AppEnvironment.authAPIUrl ,
      endPoint:authorizeMobileNumberEndPoint ,
      lang: language
    );
    return response.value;
  }
}

