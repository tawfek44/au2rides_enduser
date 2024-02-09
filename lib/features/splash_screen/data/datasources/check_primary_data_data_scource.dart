import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../core/storage/network/end_points.dart';

@injectable
class CheckPrimaryDataDataSource {
  String baseUrl = AppEnvironment.baseAPIUrl;

  checkPrimaryData({required String lang, required dynamic data}) async {
    final response = await DioClient().postData(
        endPoint: EndPoints.primaryDataEndpoint,
        lang: lang,
        data: data,
        apiUrl: baseUrl,
        authorizationToken: getIt<UserRepository>().getAccessToken);
    return response.value;
  }
}
