import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';

@injectable
class CheckPrimaryDataDataSource {
  String baseUrl =AppEnvironment.baseAPIUrl;
  checkPrimaryData({required String lang,required dynamic data}) async {
    final response =
        await DioClient().postData(endPoint: primaryDataEndpoint, lang: lang, data: data,apiUrl: baseUrl);
    return response;
  }
}
