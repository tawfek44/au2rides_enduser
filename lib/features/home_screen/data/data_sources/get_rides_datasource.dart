import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/storage/network/end_points.dart';

@injectable
class GetRidesDataSource {
  String baseUrl = AppEnvironment.baseAPIUrl;
  getAllRidesFromNetworkDatabase() async {
    final response = await DioClient().getData(
        endPoint: EndPoints.getRidesEndPoint,
        lang: getIt<UserRepository>().getUserLanguage,
        authorizationToken: getIt<UserRepository>().getAccessToken,
        apiUrl: baseUrl);
    return response.value;
  }
}
