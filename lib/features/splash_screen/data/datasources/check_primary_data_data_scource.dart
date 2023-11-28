import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';

@injectable
class CheckPrimaryDataDataSource {
  checkPrimaryData({required String lang,required dynamic data}) async {
    final response =
        await DioClient().postData(endPoint: primaryDataEndpoint, lang: lang, data: data);
    return response;
  }
}
