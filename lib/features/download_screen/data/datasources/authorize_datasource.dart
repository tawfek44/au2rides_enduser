import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../core/storage/network/end_points.dart';

abstract class AuthorizeDataSource {
  authorizeNetworkDatabase({required data});
}

@Injectable(as: AuthorizeDataSource)
class AuthorizeDataSourceImpl implements AuthorizeDataSource {
  final String baseUrl = AppEnvironment.authAPIUrl;

  @override
  authorizeNetworkDatabase({required data}) async {
    final response = await DioClient().postData(
        endPoint: EndPoints.authorizeEndPoint,
        data: data,
        apiUrl: baseUrl,
        authorizationToken: getIt<UserRepository>().getUserToken);
    return response.value;
  }
}
